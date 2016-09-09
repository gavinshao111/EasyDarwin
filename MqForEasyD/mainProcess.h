/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   mainProcess.h
 * Author: 10256
 *
 * Created on 2016骞�8鏈�28鏃�, 涓婂崍11:06
 */

#ifndef MAINPROCESS_H
#define MAINPROCESS_H

int sendStartPushMq(const char *req);
int sendStopPushMqWhenThereIsNoClient(const char *fStreamName);
int sendStopPushMqForPauseReq(const char *req);
int publishMq(const char *url, const char *clientId, const char *Topic, const char *PayLoad);

#endif /* MAINPROCESS_H */

