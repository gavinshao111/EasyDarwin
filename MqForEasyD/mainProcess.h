#ifndef MAINPROCESS_H
#define MAINPROCESS_H

typedef struct sVideoReqInfoType{
    const char *req;
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

int sendStartPushMq(const videoReqInfoType* aVideoReqInfo);
//int sendStopPushMqWhenThereIsNoClient(const char *fStreamName);
//int sendStopPushMq(videoReqInfoType* aVideoReqInfo);

//filePath should like: /realtime/$1234/1/realtime.sdp
int sendStopPushMq(const char *urlWithoutRTSP);
int publishMq(const char *url, const char *clientId, const char *Topic, const char *PayLoad);
int parseReq(const char *areq, videoReqInfoType* aVideoReqInfo, const bool startFromIp);


#endif /* MAINPROCESS_H */

