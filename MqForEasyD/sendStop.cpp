//g++ sendStop.cpp -L. -lMqForEasyD -o sendStop
#include <stdio.h>
#include <iostream>
#include "mainProcess.h"
using namespace std;

int main(void)
{
	
	const char *fStreamName = "record/$carleapmotorCLOUDE20160727inform/1/2016-08-30_113613.sdp";
	int rc = -1;
	
	
	while(getchar()){
		rc = sendStopPushMqWhenThereIsNoClient(fStreamName);
		if (0 != rc){
			cout<<"error, rc = "<<rc<<endl;
			return 0;
		}
		cout<<"sent."<<endl;
	}


	return 0;
}