#include "mq.h"
#include <string.h>
#include <errno.h>
#include <vector>
extern "C"{
    #include "MQTTAsync.h"
    #include "MQTTClient.h"
}

#define UINT unsigned int 

//#define ADDRESS     "tcp://localhost:1883"
//#define CLIENTID    "EasyDarwin"
//#define TOPIC       "MQTTTest"
//#define PAYLOAD     argv[1]
#define QOS         1
#define TIMEOUT     10000L

#define MQTTCLIENT_PERSISTENCE_NONE 1
#define URLERR if ('\0' != *(req+i+3)){printf("URL Format error.");return;}

//MQ
const char *strClientIdForMQ = "EasyDarwin";
const char *strMQServerAddress = "tcp://localhost:1883";
//RTSP
const char *strVideoinfoAsk = "videoinfoAsk";
//EasyDarwin与车机的MQ
const char *strServiceType = "viedoPlayer";
const char *strData_Type = "Realtime";
const char *strVideoType = "SD";
const char *strOperation = "Begin";


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
 */



void detectAndSendSdpOPTIONReq(char *req){
    if (NULL == req)
        return;
    
    //qtss_printf("req: %s\n\n\n", req);
    UINT i = 0;
    UINT startOfUrl = -1;
    UINT ipOfst = -1;
    UINT portOfst = -1;
    UINT realOrRecFlagOfst = -1;
    UINT clientIdOfst = -1;
    UINT videoTypeOfst = -1;
    UINT fileNameOfst = -1;
    UINT fileNameEndOfst = -1;
    for (; ' ' == *(req+i); i++);
    
    if ('O' != *(req+i) && 'o' != *(req+i))
        return;
    for (; '/' != *(req+i); i++){URLERR}
    ipOfst = i += 2;
    for (; ':' != *(req+i); i++){URLERR}
    portOfst = ++i;
    
    for (; '/' != *(req+i); i++){URLERR}
    realOrRecFlagOfst = ++i;
    // Do not send mq for record req now.
    if (0 == memcmp(req+i, "record", 6))
        return;
    if (0 != memcmp(req+i, "realtime", 8))
        {printf("RealOrRecFlag Format error.");return;}
    
    for (; '/' != *(req+i); i++){URLERR}
    if ('$' != *(req+ ++i))
        {printf("ClientId Format error.");return;}
    clientIdOfst = ++i;
    
    for (; '/' != *(req+i); i++){URLERR}
    if ('0' != *(req+ ++i) && '1' != *(req+i))
        {printf("VideoType Format error.");return;}
    videoTypeOfst = i;
    
    if ('/' != *(req+ ++i))
        {printf("FileName Format error.");return;}
    fileNameOfst = ++i;
    for (; '\0' != *(req+i) || ' ' != *(req+i) || '/' != *(req+i); i++){URLERR}
    fileNameEndOfst = i;
    
    char strTopic[1 + videoTypeOfst - clientIdOfst + sizeof(strVideoinfoAsk) + 1] = {0};
    strTopic[0] = '/';
    memcpy(strTopic + 1, req+clientIdOfst, videoTypeOfst - clientIdOfst);
    strlcpy(strTopic + 1 + videoTypeOfst - clientIdOfst, strVideoinfoAsk, maxPayLoadLen);
      
    char strPayLoad[maxPayLoadLen] = {0};    
    strcat(strPayLoad, "{\"ServiceType\":");
    //strcat();
    
    MQTTClient client;
    int rc = 0;
    MQTTClient_connectOptions conn_opts = MQTTClient_connectOptions_initializer;
    conn_opts.connectTimeout = 5;
    MQTTClient_message pubmsg = MQTTClient_message_initializer;
    MQTTClient_deliveryToken token;

    if (rc = MQTTClient_create(&client, ADDRESS, CLIENTID,
            MQTTCLIENT_PERSISTENCE_NONE, NULL) != MQTTCLIENT_SUCCESS)
    {
        printf("Failed to connect create MQTTClient, return code %d\n", rc);
        return;
    }
    conn_opts.keepAliveInterval = 20;
    conn_opts.cleansession = 1;
    if (rc = MQTTClient_setCallbacks(client, NULL, NULL, NULL, NULL) != MQTTCLIENT_SUCCESS)
    {
        printf("Failed to setCallbacks, return code %d\n", rc);
        return;
    }
    if (rc = MQTTClient_connect(client, &conn_opts) != MQTTCLIENT_SUCCESS)
    {
        printf("Failed to connect to MQ server, return code %d\n", rc);
        return;
    }
    pubmsg.payload = req+startOfUrl;
    pubmsg.payloadlen = i+4-startOfUrl;
    pubmsg.qos = QOS;
    pubmsg.retained = 0;
    if (rc = MQTTClient_publishMessage(client, TOPIC, &pubmsg, &token) != MQTTCLIENT_SUCCESS)
    {
        printf("Failed to publishMessage to MQ server, return code %d\n", rc);
        return;
    } 

//                if (rc = MQTTClient_waitForCompletion(client, token, TIMEOUT) != MQTTCLIENT_SUCCESS)
//                {
//                    qtss_printf("Failed to connect waitForCompletion to MQ server, return code %d\n", rc);
//                    return;
//                }
//                qtss_printf("OPTION request sent. Waiting for car respones...\n");                
    OSThread::Sleep(100);

    MQTTClient_disconnect(client, 10000);
    MQTTClient_destroy(&client);

            //qtss_printf("Detecting sdp OPTION request: %.*s\nsend to car.\n", i+4-startOfUrl, req+startOfUrl);

    
    
}
