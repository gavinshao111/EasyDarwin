/*
g++ MQTTClient_publish.cpp -I ../../mqtt.c/include/ -L ../../mqtt.c/lib -lpaho-mqtt3c -DNO_PERSISTENCE=1 -o mq_publish
*/

#include "stdio.h"
#include "stdlib.h"
#include "string.h"
#include <iostream>
#include "MQTTClient.h"
using namespace std;
#define ADDRESS     "ssl://120.27.188.84:8883"
//#define ADDRESS     "ssl://localhost:1883"
#define CLIENTID    "mqtt.c_MQTTClient_publish"
#define TOPIC       "MQTTTest"
#define PAYLOAD     argv[1]
#define QOS         1
#define TIMEOUT     10000L

#define MQTTCLIENT_PERSISTENCE_NONE 1



int main(int argc, char* argv[])
{
    if(argc <2){
        cout << "please input PAYLOAD in arg2." << endl;
        return 0;
    }

    cout << "argv[1]: " << argv[1] << endl;
    
    MQTTClient client;
    MQTTClient_connectOptions conn_opts = MQTTClient_connectOptions_initializer;
    conn_opts.connectTimeout = 3;
    MQTTClient_message pubmsg = MQTTClient_message_initializer;
    MQTTClient_deliveryToken token;
    int rc;

    MQTTClient_create(&client, ADDRESS, CLIENTID,
            MQTTCLIENT_PERSISTENCE_NONE, NULL);
    conn_opts.keepAliveInterval = 20;
    conn_opts.cleansession = 1;
    //conn_opts.MQTTVersion = MQTTVERSION_3_1;
    conn_opts.username = "easydarwin";
    conn_opts.password = "123456";

	MQTTClient_nameValue* version = MQTTClient_getVersionInfo();
    cout<<"tVersionInfo: "<<version->name<<". "<<version->value<<endl;
	
    if ((rc = MQTTClient_connect(client, &conn_opts)) != MQTTCLIENT_SUCCESS)
    {
            printf("Failed to connect, return code %d\n", rc);
            exit(EXIT_FAILURE);
    }
    pubmsg.payload = (void*)PAYLOAD;
    pubmsg.payloadlen = strlen(PAYLOAD);
    pubmsg.qos = QOS;
    pubmsg.retained = 0;
    MQTTClient_publishMessage(client, TOPIC, &pubmsg, &token);
    printf("Waiting for up to %d seconds for publication of %s\n"
            "on topic %s for client with ClientID: %s\n",
            (int)(TIMEOUT / 1000), PAYLOAD, TOPIC, CLIENTID);
    rc = MQTTClient_waitForCompletion(client, token, TIMEOUT);
    printf("Message with delivery token %d delivered\n", token);
    MQTTClient_disconnect(client, 10000);
    MQTTClient_destroy(&client);
    return rc;
}