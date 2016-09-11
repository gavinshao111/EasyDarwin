#ifndef MAINPROCESS_H
#define MAINPROCESS_H

int sendStartPushMq(const char *req);
int sendStopPushMqWhenThereIsNoClient(const char *fStreamName);
int sendStopPushMqForPauseReq(const char *req);
int publishMq(const char *url, const char *clientId, const char *Topic, const char *PayLoad);

#endif /* MAINPROCESS_H */

