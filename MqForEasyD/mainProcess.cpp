
#include <string.h>
#include <unistd.h>
#include <cstdlib>
#include <iostream>
using namespace std;
extern "C"{
    #include "MQTTAsync.h"
    #include "MQTTClient.h"
}
#include "strlfunc.h"
#include "mainProcess.h"

#define UINT unsigned int 

#define QOS         1
#define TIMEOUT     10000L

#define MQTTCLIENT_PERSISTENCE_NONE 1
#define URLERR if ('\0' == *(req+i+3)){printf("URL Format error.\n");return 9;}
#define PRINTERR(ERRTYPE) printf("%s format error:\n%s\n", (ERRTYPE), req);return 10;
//MQ
const char *strClientIdForMQ = "EasyDarwin";
const char *strMQServerAddress = "tcp://120.27.188.84:1883";
//const char *strMQServerAddress = "tcp://localhost:1883";
//RTSP
const char *strVideoinfoAsk = "videoinfoAsk";
//EasyDarwin与车机的MQ
const char *strServiceType = "viedoPlayer";
const char *strData_Type = "Realtime";
const char *strVideoType = "SD";
const char *strOperationBegin = "Begin";
const char *strOperationStop = "Stop";
const char *strCarUserAgent = "LeapMotor Push v1.0";

const UINT maxPayLoadLen= 2000;

/*
 * 客户端发过来的URL例子:
rtsp://ip:port/realtime/$clientid/VideoType/realtime.sdp
VideoType=1 标清
VideoType=0 高清
 */
/*
 * req例子: 
OPTION rtsp://120.27.188.84:8888/realtime/$1234/0/realtime.sdp RTSP/1.0\r\n
CSeq: 17\r\n


DESCRIBE rtsp://172.17.4.9:8888/realtime/$carleapmotorCLOUDE20160727inform/1/realtime.sdp RTSP/1.0\r\n
CSeq: 3\r\n
User-Agent: LibVLC/2.2.4 (LIVE555 Streaming Media v2016.02.22)\r\n
Accept: application/sdp\r\n
\r\n
 *  */


int sendStartPushMq(const char *req){        
    if (NULL == req)
        return -1;        
    
    //qtss_printf("req: %s\n\n\n", req);
    UINT i = 0;
    UINT urlOfst = -1;
    UINT ipOfst = -1;
    UINT portOfst = -1;
    UINT realOrRecFlagOfst = -1;
    UINT clientIdOfst = -1;
    UINT videoTypeOfst = -1;
    UINT fileNameOfst = -1;
    UINT fileNameEndOfst = -1;
    bool isRealtime = false;
    
    i += sizeof("OPTIONS") - 1;
    for (; ' ' == *(req+i); i++);
    
    urlOfst = i;
    if (*(req+i) != 'r' ||
            *(req+ ++i) != 't' ||
            *(req+ ++i) != 's' ||
            *(req+ ++i) != 'p' ||
            *(req+ ++i) != ':' ||
            *(req+ ++i) != '/' ||
            *(req+ ++i) != '/')
        //PRINTERR("RTSP")
        return 11;
        
    ipOfst = ++i;
    
    for (; ':' != *(req+i); i++){URLERR}
    portOfst = ++i;
    
    for (; '/' != *(req+i); i++){URLERR}
    realOrRecFlagOfst = ++i;
    

    if (' ' == *(req+i))
        return 0;
    else if (0 == memcmp(req+i, "realtime", 8))
        isRealtime = true;
    else if (0 != memcmp(req+i, "record", 6))
        return 0;
    
    for (; '/' != *(req+i); i++){URLERR}
    if ('$' != *(req+ ++i)) {
        //PRINTERR("ClientId")
        return 12;
    }        
    clientIdOfst = ++i;
    
    for (; '/' != *(req+i); i++){URLERR}
    if ('0' != *(req+ ++i) && '1' != *(req+i)) {
        //PRINTERR("VideoType")
        return 13;
    }
    videoTypeOfst = i;
    
    if ('/' != *(req+ ++i)) {
        //PRINTERR("FileName")
        return 14;
    }

    fileNameOfst = ++i;

    for (; '\0' != *(req+i) && ' ' != *(req+i) && '/' != *(req+i); i++){URLERR}
    fileNameEndOfst = i++;

    for(;;i++){
        if(0 == *(req+i)){
            return 15;
        }
        else if (*(req+i) != 'U' ||
            *(req+ ++i) != 's' ||
            *(req+ ++i) != 'e' ||
            *(req+ ++i) != 'r' ||
            *(req+ ++i) != '-' ||
            *(req+ ++i) != 'A' ||
            *(req+ ++i) != 'g' ||
            *(req+ ++i) != 'e' ||
            *(req+ ++i) != 'n' ||
            *(req+ ++i) != 't' ||
            *(req+ ++i) != ':')
            continue;
        else    //get User-Agent:
            break;        
    }
    for (i++ ; ' ' == *(req+i); i++);
    
    // we only send MQ from client.
    if (0 == memcmp(req+i, strCarUserAgent, 9))
        return 0;
    
    
    //char strTopic[1 + videoTypeOfst - clientIdOfst + sizeof(strVideoinfoAsk)] = {0};
    //char* strTopic = (char *)malloc(sizeof(char)*(1 + videoTypeOfst - clientIdOfst + sizeof(strVideoinfoAsk)));
    //memset(strTopic, 0, sizeof(char)*(1 + videoTypeOfst - clientIdOfst + sizeof(strVideoinfoAsk)));
    char *strTopic = (char*)malloc(1 + videoTypeOfst - clientIdOfst + strlen(strVideoinfoAsk) + 2);
    memset(strTopic, 0, 1 + videoTypeOfst - clientIdOfst + strlen(strVideoinfoAsk) + 2);
            
    *strTopic = '/';
    memcpy(strTopic + 1, req+clientIdOfst, videoTypeOfst - clientIdOfst);
    strlcpy(strTopic + 1 + videoTypeOfst - clientIdOfst, strVideoinfoAsk, maxPayLoadLen);
    
    char strPayLoad[maxPayLoadLen] = {0};    
    strlcat(strPayLoad, "{\"ServiceType\":\"", maxPayLoadLen);   
    strlcat(strPayLoad, strServiceType, maxPayLoadLen);
    strlcat(strPayLoad, "\",\"Data_Type\":\"", maxPayLoadLen);
    
    if (isRealtime)
        strlcat(strPayLoad, "Realtime", maxPayLoadLen);
    else
        strlcat(strPayLoad, "Recording", maxPayLoadLen);
    
    strlcat(strPayLoad, "\",\"URL\":\"", maxPayLoadLen);
    strncat(strPayLoad, req + urlOfst, fileNameEndOfst - urlOfst);
    strlcat(strPayLoad, "\",\"VideoType\":\"", maxPayLoadLen);
    
    if ('0' == *(req + videoTypeOfst))
        strlcat(strPayLoad, "HD", maxPayLoadLen);
    else
        strlcat(strPayLoad, "SD", maxPayLoadLen);
    
    strlcat(strPayLoad, "\",\"Operation\":\"", maxPayLoadLen);
    strlcat(strPayLoad, strOperationBegin, maxPayLoadLen);
    strlcat(strPayLoad, "\"}", maxPayLoadLen);

    int rc = publishMq(strMQServerAddress, strClientIdForMQ, strTopic, strPayLoad);
    if (0 != rc){
        printf("publishMq to StartPush fail, return code: %d\n", rc);
        free(strTopic);
        return -1;
    }
    
    free(strTopic);
    return 1;
    
}

// fStreamName is like realtime/$1234/1/realtime.sdp
int sendStopPushMqWhenThereIsNoClient(const char *fStreamName){
    if (NULL == fStreamName)
        return -1;
    
    UINT clientIdOfst = -1;
    UINT endOfClientIdOfst = -1;
    int i = 0;
    
//    char strPayLoad[maxPayLoadLen] = {0};    
//    strlcat(strPayLoad, "{\"ServiceType\":\"", maxPayLoadLen);   
//    strlcat(strPayLoad, strServiceType, maxPayLoadLen);
//    strlcat(strPayLoad, "\",\"Data_Type\":\"", maxPayLoadLen);
//    //strlcat(strPayLoad, strData_Type, maxPayLoadLen);
//    strlcat(strPayLoad, "\",\"URL\":\"", maxPayLoadLen);
//    //strncat(strPayLoad, req + urlOfst, fileNameEndOfst - urlOfst);
//    strlcat(strPayLoad, "\",\"VideoType\":\"", maxPayLoadLen);        
//    strlcat(strPayLoad, "\",\"Operation\":\"", maxPayLoadLen);
//    strlcat(strPayLoad, strOperationStop, maxPayLoadLen);
//    strlcat(strPayLoad, "\"}", maxPayLoadLen);
    char *strPayLoad = "{\"ServiceType\":\"\", \"Data_Type\": \"\", \"URL\":\"\", \"VideoType\":\"\" , \"Operation\":\"\" }";

    for (; '$' != *(fStreamName+i); i++){
        if ('\0' == *(fStreamName+i))
            return -1;        
    }
    clientIdOfst = ++i;
    for (; '/' != *(fStreamName+i); i++){
        if ('\0' == *(fStreamName+i))
            return -1;        
    }
    endOfClientIdOfst = i;
    if (endOfClientIdOfst <= clientIdOfst)
        return -1;
    
    //strTopic should like  "/carleapmotorCLOUDE20160727inform/videoinfoAsk";
    //char strTopic[endOfClientIdOfst - clientIdOfst + sizeof(strVideoinfoAsk) + 2] = {0};
    UINT lenOfStrTopic = endOfClientIdOfst - clientIdOfst + strlen(strVideoinfoAsk) + 4;
    char *strTopic = (char*)malloc(lenOfStrTopic);
    memset(strTopic, 0, lenOfStrTopic);
    *strTopic = '/';
    strncpy(strTopic + 1 , fStreamName + clientIdOfst, endOfClientIdOfst - clientIdOfst);
    strlcat(strTopic, "/", lenOfStrTopic);
    strlcat(strTopic, strVideoinfoAsk, lenOfStrTopic);

    int rc = publishMq(strMQServerAddress, strClientIdForMQ, strTopic, strPayLoad);
    if (0 != rc){
        printf("publishMq to StopPush fail, return code: %d\n", rc);
        free(strTopic);
        return -1;
    }
    
    free(strTopic);
    return 0;
}
/*
int sendStopPushMqForPauseReq(const char *req)
{
    if (NULL == req)
        return -1;
  
    UINT i = 0;
    UINT clientIdOfst = -1;
    UINT endOfClientIdOfst = -1;

    
    i += sizeof("PAUSE") - 1;
    for (; ' ' == *(req+i); i++);    
    if (*(req+i) != 'r' ||
            *(req+ ++i) != 't' ||
            *(req+ ++i) != 's' ||
            *(req+ ++i) != 'p' ||
            *(req+ ++i) != ':' ||
            *(req+ ++i) != '/' ||
            *(req+ ++i) != '/')
        return 2;        
    
    for (; ':' != *(req+i); i++){URLERR}
    ++i;    
    for (; '/' != *(req+i); i++){URLERR}
    ++i;      
    for (; '/' != *(req+i); i++){URLERR}
    if ('$' != *(req+ ++i)) {
        //PRINTERR("ClientId")
        return 12;
    }        
    clientIdOfst = ++i;
    
    for (; '/' != *(req+i); i++){URLERR}
    endOfClientIdOfst = i;
    
    if (clientIdOfst >= endOfClientIdOfst){
        printf("URL Format error.\n");return 9;
    }
    
    //strTopic should like  "/carleapmotorCLOUDE20160727inform/videoinfoAsk";
    //char strTopic[endOfClientIdOfst - clientIdOfst + sizeof(strVideoinfoAsk) + 2] = {0};
    UINT lenOfStrTopic = endOfClientIdOfst - clientIdOfst + strlen(strVideoinfoAsk) + 4;
    char *strTopic = (char*)malloc(lenOfStrTopic);
    memset(strTopic, 0, lenOfStrTopic);
    *strTopic = '/';
    strncpy(strTopic + 1 , req + clientIdOfst, endOfClientIdOfst - clientIdOfst);
    strlcat(strTopic, "/", lenOfStrTopic);
    strlcat(strTopic, strVideoinfoAsk, lenOfStrTopic);

    char strPayLoad[maxPayLoadLen] = {0};    
    strlcat(strPayLoad, "{\"ServiceType\":\"", maxPayLoadLen);   
    strlcat(strPayLoad, strServiceType, maxPayLoadLen);
    strlcat(strPayLoad, "\",\"Data_Type\":\"", maxPayLoadLen);
    //strlcat(strPayLoad, strData_Type, maxPayLoadLen);
    strlcat(strPayLoad, "\",\"URL\":\"", maxPayLoadLen);
    //strncat(strPayLoad, req + urlOfst, fileNameEndOfst - urlOfst);
    strlcat(strPayLoad, "\",\"VideoType\":\"", maxPayLoadLen);
    
//    if ('0' == *(req + videoTypeOfst))
//        strlcat(strPayLoad, "HD", maxPayLoadLen);
//    else
//        strlcat(strPayLoad, "SD", maxPayLoadLen);
    
    strlcat(strPayLoad, "\",\"Operation\":\"", maxPayLoadLen);
    strlcat(strPayLoad, strOperationStop, maxPayLoadLen);
    strlcat(strPayLoad, "\"}", maxPayLoadLen);
    
    int rc = publishMq(strMQServerAddress, strClientIdForMQ, strTopic, strPayLoad);
    if (0 != rc){
        printf("publishMq to StopPush fail, return code: %d\n", rc);
        free(strTopic);
        return -1;
    }
    
    free(strTopic);
    return 0;
}
*/
int publishMq(const char *url, const char *clientId, const char *Topic, const char *PayLoad)
{
    MQTTClient client;
    int rc = 0;
    MQTTClient_connectOptions conn_opts = MQTTClient_connectOptions_initializer;
    conn_opts.connectTimeout = 5;
    MQTTClient_message pubmsg = MQTTClient_message_initializer;
    MQTTClient_deliveryToken token;

    if (rc = MQTTClient_create(&client, url, clientId,
            MQTTCLIENT_PERSISTENCE_NONE, NULL) != MQTTCLIENT_SUCCESS)
    {
        printf("Failed to connect create MQTTClient, return code %d\n", rc);
        return -1;
    }
    conn_opts.keepAliveInterval = 20;
    conn_opts.cleansession = 1;
    conn_opts.username = "easydarwin";
    conn_opts.password = "123456";
    
    if (rc = MQTTClient_connect(client, &conn_opts) != MQTTCLIENT_SUCCESS)
    {
        printf("Failed to connect to MQ server, return code %d\n", rc);
        return -2;
    }
    pubmsg.payload = (void *)PayLoad;
    pubmsg.payloadlen = strlen(PayLoad);
    pubmsg.qos = QOS;
    pubmsg.retained = 0;
    if (rc = MQTTClient_publishMessage(client, Topic, &pubmsg, &token) != MQTTCLIENT_SUCCESS)
    {
        printf("Failed to publishMessage to MQ server, return code %d\n", rc);
        return -3;
    }              

    MQTTClient_disconnect(client, 10000);
    MQTTClient_destroy(&client);
    
    return 0;
}
