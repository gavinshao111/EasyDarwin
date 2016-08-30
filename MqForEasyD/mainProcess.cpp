
#include <string.h>
#include <unistd.h>

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
const char *strMQServerAddress = "tcp://localhost:1883";
//RTSP
const char *strVideoinfoAsk = "videoinfoAsk";
//EasyDarwin与车机的MQ
const char *strServiceType = "viedoPlayer";
const char *strData_Type = "Realtime";
const char *strVideoType = "SD";
const char *strOperationBegin = "Begin";
const char *strOperationStop = "Stop";


const UINT maxPayLoadLen= 2000;

/*
 * 客户端发过来的URL例子:
rtsp://ip:port/realtime/$clientid/VideoType/realtime.sdp
VideoType=1 标清
VideoType=0 高清
 */
/*
 * req例子: 
OPTION rtsp://10.30.16.216:8888/realtime/$1234/0/realtime.sdp RTSP/1.0\r\n
CSeq: 17\r\n


DESCRIBE rtsp://172.17.4.9:8888/realtime/$carleapmotorCLOUDE20160727inform/1/realtime.sdp RTSP/1.0\r\n
CSeq: 3\r\n
User-Agent: LibVLC/2.2.4 (LIVE555 Streaming Media v2016.02.22)\r\n
Accept: application/sdp\r\n
\r\n
 *  */



int sendDescReq(const char *req){        
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
   
    i += sizeof("DESCRIBE") - 1;
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
    // Do not send mq for record req now.
    if (0 == memcmp(req+i, "record", 6))
        return 1;
    if (0 != memcmp(req+i, "realtime", 8)) {
        //printf("RealOrRecFlag Format error.\n");
        return 2;
    }
    
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
    fileNameEndOfst = i;

    char strTopic[1 + videoTypeOfst - clientIdOfst + sizeof(strVideoinfoAsk)] = {0};
    strTopic[0] = '/';
    memcpy(strTopic + 1, req+clientIdOfst, videoTypeOfst - clientIdOfst);
    strlcpy(strTopic + 1 + videoTypeOfst - clientIdOfst, strVideoinfoAsk, maxPayLoadLen);
    
    char strPayLoad[maxPayLoadLen] = {0};    
    strlcat(strPayLoad, "{\"ServiceType\":\"", maxPayLoadLen);   
    strlcat(strPayLoad, strServiceType, maxPayLoadLen);
    strlcat(strPayLoad, "\",\"Data_Type\":\"", maxPayLoadLen);
    strlcat(strPayLoad, strData_Type, maxPayLoadLen);
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

    //printf("PayLoad to be publish: %s\n", strPayLoad);
    
    MQTTClient client;
    int rc = 0;
    MQTTClient_connectOptions conn_opts = MQTTClient_connectOptions_initializer;
    conn_opts.connectTimeout = 5;
    MQTTClient_message pubmsg = MQTTClient_message_initializer;
    MQTTClient_deliveryToken token;

    if (rc = MQTTClient_create(&client, strMQServerAddress, strClientIdForMQ,
            MQTTCLIENT_PERSISTENCE_NONE, NULL) != MQTTCLIENT_SUCCESS)
    {
        printf("Failed to connect create MQTTClient, return code %d\n", rc);
        return 3;
    }
    conn_opts.keepAliveInterval = 20;
    conn_opts.cleansession = 1;
    if (rc = MQTTClient_connect(client, &conn_opts) != MQTTCLIENT_SUCCESS)
    {
        printf("Failed to connect to MQ server, return code %d\n", rc);
        return 4;
    }
    pubmsg.payload = strPayLoad;
    pubmsg.payloadlen = strlen(strPayLoad);
    pubmsg.qos = QOS;
    pubmsg.retained = 0;
    if (rc = MQTTClient_publishMessage(client, strTopic, &pubmsg, &token) != MQTTCLIENT_SUCCESS)
    {
        printf("Failed to publishMessage to MQ server, return code %d\n", rc);
        return 5;
    } 
              
    printf("DESCRIBE req sent.\n");
    //usleep(5000);

    MQTTClient_disconnect(client, 10000);
    MQTTClient_destroy(&client);
    return 0;
}

int sendStopPushMqToCar(const char *req){
    if (NULL == req)
        return -1;
    
    char strPayLoad[maxPayLoadLen] = {0};    
    strlcat(strPayLoad, "{\"ServiceType\":\"", maxPayLoadLen);   
    strlcat(strPayLoad, strServiceType, maxPayLoadLen);
    strlcat(strPayLoad, "\",\"Data_Type\":\"", maxPayLoadLen);
    strlcat(strPayLoad, strData_Type, maxPayLoadLen);
    strlcat(strPayLoad, "\",\"URL\":\"", maxPayLoadLen);
    //strncat(strPayLoad, req + urlOfst, fileNameEndOfst - urlOfst);
    strlcat(strPayLoad, "\",\"VideoType\":\"", maxPayLoadLen);
    
//    if ('0' == *(req + videoTypeOfst))
//        strlcat(strPayLoad, "HD", maxPayLoadLen);
//    else
        strlcat(strPayLoad, "SD", maxPayLoadLen);
    
    strlcat(strPayLoad, "\",\"Operation\":\"", maxPayLoadLen);
    strlcat(strPayLoad, strOperationStop, maxPayLoadLen);
    strlcat(strPayLoad, "\"}", maxPayLoadLen);

    MQTTClient client;
    int rc = 0;
    MQTTClient_connectOptions conn_opts = MQTTClient_connectOptions_initializer;
    conn_opts.connectTimeout = 5;
    MQTTClient_message pubmsg = MQTTClient_message_initializer;
    MQTTClient_deliveryToken token;

    if (rc = MQTTClient_create(&client, strMQServerAddress, strClientIdForMQ,
            MQTTCLIENT_PERSISTENCE_NONE, NULL) != MQTTCLIENT_SUCCESS)
    {
        printf("Failed to connect create MQTTClient, return code %d\n", rc);
        return 3;
    }
    conn_opts.keepAliveInterval = 20;
    conn_opts.cleansession = 1;
    if (rc = MQTTClient_connect(client, &conn_opts) != MQTTCLIENT_SUCCESS)
    {
        printf("Failed to connect to MQ server, return code %d\n", rc);
        return 4;
    }
    pubmsg.payload = strPayLoad;
    pubmsg.payloadlen = strlen(strPayLoad);
    pubmsg.qos = QOS;
    pubmsg.retained = 0;

    char *strTopic = "/carleapmotorCLOUDE20160727inform/videoinfoAsk";
    if (rc = MQTTClient_publishMessage(client, strTopic, &pubmsg, &token) != MQTTCLIENT_SUCCESS)
    {
        printf("Failed to publishMessage to MQ server, return code %d\n", rc);
        return 5;
    } 
              
    printf("StopPush MQ sent.\n");

    MQTTClient_disconnect(client, 10000);
    MQTTClient_destroy(&client);
    
    
    
    return 0;
}