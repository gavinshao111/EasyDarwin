g++ MQTTClient_subscribe.cpp -I../../paho.mqtt.c/src -L../../paho.mqtt.c/build/output -lpaho-mqtt3c -DNO_PERSISTENCE=1 -o sub -g

g++ MQTTClient_publish.cpp -I../../paho.mqtt.c/src -L../../paho.mqtt.c/build/output -lpaho-mqtt3c -DNO_PERSISTENCE=1 -o pub -g
