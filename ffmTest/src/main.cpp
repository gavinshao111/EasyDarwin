#include <stdio.h>
#include <unistd.h>

#include <pthread.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

#include <sys/socket.h>
#include <stdlib.h>
#include <netinet/in.h> 
#include <arpa/inet.h>







#define __STDC_CONSTANT_MACROS

#ifdef _WIN32
//Windows
extern "C"
{
#include "libavformat/avformat.h"
#include "libavutil/mathematics.h"
#include "libavutil/time.h"
};
#else
//Linux...
#ifdef __cplusplus
extern "C"
{
#endif
#include <libavformat/avformat.h>
#include <libavutil/mathematics.h>
#include <libavutil/time.h>
#ifdef __cplusplus
};
#endif
#endif





unsigned char bufferFifo[327680] = {0};
int buffLen = 0;
int head = 0;
int end = 0;
unsigned char testData[200000] = {0};


void *bufferThread(void *nothing);
int read_packet(void *bufferFifo, unsigned char *bufferOut, int buf_size);

void streamInit(AVFormatContext **inCtx,AVFormatContext **outCtx)
{
	//*inCtx = avformat_alloc_context();
	//AVIOContext *avio =avio_alloc_context(iobuffer, 32768,0,bufferFifo,read_packet,NULL,NULL);
	//*inCtx->pb=avio;
	
}

	

int main(int argc, char* argv[])
{
	pthread_t thread;
	AVOutputFormat *ofmt = NULL;
	//输入对应一个AVFormatContext，输出对应一个AVFormatContext
	//（Input AVFormatContext and Output AVFormatContext）
	AVFormatContext *ifmt_ctx = NULL;
	AVFormatContext *ofmt_ctx = NULL;
	AVPacket pkt;
	AVPacket pktTest[2];
	const char *in_filename1, *in_filename2, *out_filename;
	int ret, i;
	int videoindex=-1;
	int frame_index=0;
	int64_t start_time=0;
	

	
	int testDataLen = 0;

	unsigned char DHHead[100] = {0};
	int DHHeadLen = 0;
	
	int socketFd,socketFd1;
	
	struct sockaddr_in address;
	int len = sizeof(address);

	socketFd = socket(AF_INET,SOCK_STREAM,0);

	if(socketFd == -1)
	{
		perror("socketfd failed!");
                return -1;
	}
	address.sin_family = AF_INET;
	address.sin_addr.s_addr = htonl(INADDR_ANY);
	address.sin_port = htons(10087);

	ret = bind(socketFd, (struct sockaddr*)&address, len);
	
	ret = listen(socketFd,10);

	if(ret == -1)
	{
		perror("listen failed!");
                return -1;
	}

	pthread_create(&thread,NULL, bufferThread,NULL);

	//socketFd1 = accept(socketFd, (struct sockaddr*)&address, (socklen_t*)&len);

	printf("accept tcp!\n");

	
	usleep(100000);
	unsigned char * iobuffer=(unsigned char *)av_malloc(32768);
	//in_filename  = "cuc_ieschool.mov";
	//in_filename  = "cuc_ieschool.mkv";
	//in_filename  = "cuc_ieschool.ts";
	//in_filename  = "cuc_ieschool.mp4";
	in_filename1 = "/home/public/sun_jianfeng/ffmTest/out/video.mp4";
	in_filename2 = "/home/public/sun_jianfeng/ffmTest/out/test.mp4";

	//out_filename = "rtsp://120.27.188.84:8081/1/test.sdp";//输出 URL（Output URL）[UDP]
	//out_filename = "rtsp://10.34.16.182:8085/abc.sdp";
	//out_filename = "rtsp://10.30.16.216:8081/abc.sdp";
	//out_filename = "rtsp://172.17.4.9:8081/abcd.sdp";
	//out_filename = "rtsp://10.30.16.216:8083/abc.sdp";
	//out_filename = "rtsp://192.168.43.201:8081/test.sdp";
	out_filename = "rtsp://172.17.4.9:8888/realtime/$1234/1/realtime.sdp";

	
	
	av_register_all();
	//Network
	avformat_network_init();

	ifmt_ctx = avformat_alloc_context();
	AVIOContext *avio =avio_alloc_context(iobuffer, 32768,0,bufferFifo,read_packet,NULL,NULL);
	ifmt_ctx->pb=avio;


	//输入（Input）
	if ((ret = avformat_open_input(&ifmt_ctx, in_filename1, 0, 0)) < 0) {
		printf( "Could not open input file.");
		goto end;
	}
	
	if ((ret = avformat_find_stream_info(ifmt_ctx, 0)) < 0) {
		printf( "Failed to retrieve input stream information");
		goto end;
	}
	
	for(i=0; i<ifmt_ctx->nb_streams; i++)
	{
		if(ifmt_ctx->streams[i]->codec->codec_type==AVMEDIA_TYPE_VIDEO)
		{
			videoindex=i;
			break;
		}
	}

	
	//av_dump_format(ifmt_ctx, 0, 0, 0);

	//输出（Output）
	
	//avformat_alloc_output_context2(&ofmt_ctx, NULL, "flv", out_filename); //RTMP
	avformat_alloc_output_context2(&ofmt_ctx, NULL, "rtsp", out_filename); //RTsP
	//avformat_alloc_output_context2(&ofmt_ctx, NULL, "mpegts", out_filename);//UDP

	if (!ofmt_ctx) 
	{
		printf( "Could not create output context\n");
		ret = AVERROR_UNKNOWN;
		goto end;
	}

	
	ofmt = ofmt_ctx->oformat;

	
	
	for (i = 0; i < ifmt_ctx->nb_streams; i++) 
	{
		//根据输入流创建输出流（Create output AVStream according to input AVStream）
		AVStream *in_stream = ifmt_ctx->streams[i];
		AVStream *out_stream = avformat_new_stream(ofmt_ctx, in_stream->codec->codec);
		if (!out_stream) {
			printf( "Failed allocating output stream\n");
			ret = AVERROR_UNKNOWN;
			goto end;
		}
		//复制AVCodecContext的设置（Copy the settings of AVCodecContext）
		ret = avcodec_copy_context(out_stream->codec, in_stream->codec);
		if (ret < 0) {
			printf( "Failed to copy context from input to output stream codec context\n");
			goto end;
		}
		out_stream->codec->codec_tag = 0;
		if (ofmt_ctx->oformat->flags & AVFMT_GLOBALHEADER)
			out_stream->codec->flags |= CODEC_FLAG_GLOBAL_HEADER;
	}
	//Dump Format------------------
	av_dump_format(ofmt_ctx, frame_index, out_filename, 1);
		
	//打开输出URL（Open output URL）
	if (!(ofmt->flags & AVFMT_NOFILE)) 
	{
		AVDictionary *options = NULL;
		av_dict_set(&options,"s","320x300",0);
		//ret = avio_open2(&ofmt_ctx->pb, out_filename, AVIO_FLAG_WRITE,NULL,&options);
		ret = avio_open(&ofmt_ctx->pb, out_filename, AVIO_FLAG_WRITE);
		if (ret < 0) {
			printf( "Could not open output URL '%s'", out_filename);
			goto end;
		}
	}
	
	//写文件头（Write file header）
	ret = avformat_write_header(ofmt_ctx, NULL);
	if (ret < 0) 
	{
		printf( "Error occurred when opening output URL\n");
		goto end;
	}

	start_time=av_gettime();

	while (1) 
	{

		int times,times1;
		
		AVStream *in_stream, *out_stream;
		ret = av_read_frame(ifmt_ctx, &pkt);


/*
		unsigned char *data = (pkt.data + pkt.size - 50);

		for(int i=0;i<40;i++)
		{
			if(data[i] == 'D' && data[i+1] == 'H')
			{
				printf("data:%s!\n",data+i);

			}
		}

		if(pkt.size >300000)
		{
			printf("收到I帧!\n");
			memcpy(testData,pkt.data,pkt.size);

			testDataLen = pkt.size;
		}

		//pkt.data = testData;
		//pkt.size = testDataLen;
		
		printf("data:0x%x 0x%x 0x%x 0x%x!\n",pkt.data[0],pkt.data[1],pkt.data[2],pkt.data[3]);

		*/

		if (ret < 0)
		{
			printf("av read frame error! %d\n;",errno);
			sleep(1);
			continue;
		}

		if(pkt.pts==AV_NOPTS_VALUE)
		{
			//Write PTS
			AVRational time_base1=ifmt_ctx->streams[videoindex]->time_base;
			//Duration between 2 frames (us)
			int64_t calc_duration=(double)AV_TIME_BASE/av_q2d(ifmt_ctx->streams[videoindex]->r_frame_rate);
			//Parameters
			pkt.pts=(double)(frame_index*calc_duration)/(double)(av_q2d(time_base1)*AV_TIME_BASE);
			pkt.dts=pkt.pts;
			pkt.duration=(double)calc_duration/(double)(av_q2d(time_base1)*AV_TIME_BASE);
		}
	
		//Important:Delay
		if(pkt.stream_index==videoindex)
		{
			AVRational time_base=ifmt_ctx->streams[videoindex]->time_base;
			AVRational time_base_q={1,AV_TIME_BASE};
			int64_t pts_time = av_rescale_q(pkt.dts, time_base, time_base_q);
			int64_t now_time = av_gettime() - start_time;
			if (pts_time > now_time)
				av_usleep(pts_time - now_time);

		}

		in_stream  = ifmt_ctx->streams[pkt.stream_index];
		out_stream = ofmt_ctx->streams[pkt.stream_index];
		/* copy packet */
		//转换PTS/DTS（Convert PTS/DTS）
		pkt.pts = av_rescale_q_rnd(pkt.pts, in_stream->time_base, out_stream->time_base, (AVRounding)(AV_ROUND_NEAR_INF|AV_ROUND_PASS_MINMAX));
		pkt.dts = av_rescale_q_rnd(pkt.dts, in_stream->time_base, out_stream->time_base, (AVRounding)(AV_ROUND_NEAR_INF|AV_ROUND_PASS_MINMAX));
		pkt.duration = av_rescale_q(pkt.duration, in_stream->time_base, out_stream->time_base);
		pkt.pos = -1;
		//Print to Screen
		//printf("pkt index:%d\n",videoindex);
		if(pkt.stream_index==videoindex)
		{
			printf("Send %8d video frames to output URL  size:%d  \n",frame_index,pkt.size);
			frame_index++;
		}
		times = av_gettime();
		//ret = av_write_frame(ofmt_ctx, &pkt);
		times1 = av_gettime();
		printf("write fram times:%dus\n",times1 - times);



		//printf("main ofmt_ctx->priv_data:%d!\n\n",(int)ofmt_ctx->priv_data);



		ret = av_interleaved_write_frame(ofmt_ctx, &pkt);


		//ret = av_write_uncoded_frame(ofmt_ctx,frame_index ,pkt.buf);
		if (ret < 0) 
		{
			printf( "Error muxing packet\n");
			break;
		}

		int64_t now_time = av_gettime();
		
		av_free_packet(&pkt);
		times++;
		
	}
	//写文件尾（Write file trailer）
	av_write_trailer(ofmt_ctx);
end:
	avformat_close_input(&ifmt_ctx);
	/* close output */
	if (ofmt_ctx && !(ofmt->flags & AVFMT_NOFILE))
		avio_close(ofmt_ctx->pb);
	avformat_free_context(ofmt_ctx);
	if (ret < 0 && ret != AVERROR_EOF) {
		printf( "Error occurred.\n");
		return -1;
	}
	return 0;
}


void *bufferThread(void *nothing)
{
	int fileFd1 = 0;
	int fileFd2 = 0;

	static int times = 0;
	static int flag = 0;

	static char h264Buff[327680];
	int h264BuffLen;
	

	
	
	//fileFd1 = open("/data/data/xiao/test.h264",O_RDONLY);
	fileFd1 = open("./video.h264",O_RDONLY);

	if(fileFd1 == -1 || fileFd2 == -1)
	{
		printf("open file filed !!!\n");
                return NULL;
	}

	printf("begin to read data !!!\n");
	while(1)
	{
		
		if(buffLen == 0)
		{
			if(times >= 10000)
			{
				//flag = flag == 0 ? 0:0;
				times = 0;
				
			}
			if(flag == 0)
			{
				if((buffLen = read(fileFd1,bufferFifo,32768)) == 0)
				{
					printf("file end!\n");
					close(fileFd1);
					//fileFd1 = open("/data/data/xiao/test.h264",O_RDONLY);
					fileFd1 = open("./video.h264",O_RDONLY);
				}
				//printf("read data1! buffLen:%d\n",buffLen);
			}
			else if(flag == 1)
			{
				
				if((buffLen = read(fileFd1,bufferFifo,32768)) == 0)
				{
					printf("file end!\n");
					close(fileFd1);
					fileFd2 = open("/data/data/xiao/test.h264",O_RDONLY);
				}
				printf("read data2! buffLen:%d\n",buffLen);

			}
			times++;
		}
		
		usleep(100);
	}

}

int read_packet(void *bufferFifo, unsigned char *bufferOut, int buf_size)
{
	//printf("get data buf_size:%d   buffLen:%d!\n",buf_size,buffLen);

	static int times = 0;

	if(times % 60 == 30)
	{
		//sleep(10);
	}

	printf("buffLen end!:%d\n  times:%d\n",buffLen,times);

	times++;
	
	if(buf_size >= 0 && buf_size <= buffLen)
	{
	
		memcpy(bufferOut,bufferFifo,buf_size);

		buffLen = 0;
		usleep(10000);

		return buf_size;
	}
	else if(buf_size >= 0 && buf_size > buffLen)
	{
		buf_size = buffLen;
		memcpy(bufferOut,bufferFifo,buf_size);

		buffLen = 0;
		usleep(10000);
		return buf_size;		
	}

	
	return 0;
}




