//g++ stopReal.cpp -L. -lMqForEasyD -o stopReal
#include <stdio.h>
#include <iostream>
#include "mainProcess.h"
using namespace std;

int main(void)
{		
	int rc = -1;
	
	const char *url = "tcp://120.27.188.84:1883";
	const char *clientId = "EasyDarwinSendStart";
	const char *Topic = "/carleapmotorCLOUDE20160727inform/videoinfoAsk";
	const char *PayLoad = "{\"ServiceType\":\"viedoPlayer\", \"Data_Type\":\"Realtime\", \"URL\":\"rtsp://120.27.188.84:8888/realtime/$carleapmotorCLOUDE20160727inform/1/realtime.sdp\", \"VideoType\":\"SD\" , \"Operation\":\"Stop\" }";
	
	rc = publishMq(url, clientId, Topic, PayLoad);

	if (0 != rc){
		printf("publishMq fail, return code: %d\n", rc);
		return 0;
    }
	cout<<"sent."<<endl;
	
	return 0;
}
