#ifndef MAINPROCESS_H
#define MAINPROCESS_H

typedef struct sVideoReqInfoType{
    char *req;
    int urlOfst;
    int ipOfst;
    int portOfst;
    int realOrRecFlagOfst;
    int clientIdOfst;
    int videoTypeOfst;
    int fileNameOfst;
    int fileNameEndOfst;
    int userAgentOfst;
    bool ignore;  // it is not app play req. like OPTION rtsp://120.27.188.84:8888 RTSP/1.0\r\n CSeq: 17\r\n
    // only deal app play req, like OPTION rtsp://10.34.16.180:8888/realtime/$1234/1/realtime.sdp
}videoReqInfoType;

int sendStartPushMq(videoReqInfoType* aVideoReqInfo);
int sendStopPushMqWhenThereIsNoClient(const char *fStreamName);
int sendStopPushMq(videoReqInfoType* aVideoReqInfo);

//filePath should like: /realtime/$1234/1/realtime.sdp
int sendStopPushMq(char* ip, int port, char *filePath);
int publishMq(const char *url, const char *clientId, const char *Topic, const char *PayLoad);
int getUrlAndUserAgent(char *areq, videoReqInfoType* aVideoReqInfo);
//int generateTopicAndPayLoad(videoReqInfoType* aVideoReqInfo, char* strTopic, char *strPayLoad, bool isBegin);

#endif /* MAINPROCESS_H */

