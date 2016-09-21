//g++ beginRec.cpp -L. -lMqForEasyD -o beginRec
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
	const char *PayLoad = "{\"ServiceType\":\"viedoPlayer\", \"Data_Type\": \"Recording\", \"URL\":\"rtsp://120.27.188.84:8888/record/$carleapmotorCLOUDE20160727inform/1/2016-08-30_113613.sdp\", \"VideoType\":\"SD\" , \"Operation\":\"Begin\" }";
	
	rc = publishMq(url, clientId, Topic, PayLoad);

	if (0 != rc){
		printf("publishMq fail, return code: %d\n", rc);
		return 0;
    }
	cout<<"sent."<<endl;
	
	return 0;
}
