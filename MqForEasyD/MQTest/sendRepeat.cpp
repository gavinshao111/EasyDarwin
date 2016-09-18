//g++ sendRepeat.cpp -L. -lMqForEasyD -o sendRepeat
#include <stdio.h>
#include <iostream>
#include "mainProcess.h"
using namespace std;

int main(void)
{	
	const char *fStreamName = "record/$carleapmotorCLOUDE20160727inform/1/2016-08-30_113613.sdp";
	int rc = -1;
	
	const char *url = "tcp://120.27.188.84:1883";
	const char *clientId = "EasyDarwinSendStart";
	const char *Topic = "/carleapmotorCLOUDE20160727inform/videoinfoAsk";
	const char *PayLoadBegin = "{\"ServiceType\":\"viedoPlayer\", \"Data_Type\": \"Recording\", \"URL\":\"rtsp://120.27.188.84:8888/record/$carleapmotorCLOUDE20160727inform/1/2016-08-30_113613.sdp\", \"VideoType\":\"SD\" , \"Operation\":\"Begin\" }";	
	const char *PayLoadStop = "{\"ServiceType\":\"viedoPlayer\", \"Data_Type\": \"Recording\", \"URL\":\"rtsp://120.27.188.84:8888/record/$carleapmotorCLOUDE20160727inform/1/2016-08-30_113613.sdp\", \"VideoType\":\"SD\" , \"Operation\":\"Stop\" }";	
	
	while(true){
		rc = -1;
		rc = publishMq(url, clientId, Topic, PayLoadBegin);

		if (0 != rc){
			printf("publishBegainMq fail, return code: %d\n", rc);
			return 0;
		}
		cout<<"publishBegainMq sent."<<endl;
		sleep(6);
		
		rc = -1;
		rc = publishMq(url, clientId, Topic, PayLoadStop);

		if (0 != rc){
			printf("publishStopMq fail, return code: %d\n", rc);
			return 0;
		}
		cout<<"publishStopMq sent.\n"<<endl;
		
		sleep(2);
	}
	
	return 0;
}
