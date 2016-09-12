g++ strlfunc.cpp mainProcess.cpp -fpic -shared -I../../paho.mqtt.c/src -L../../paho.mqtt.c/build/output -lpaho-mqtt3a -lpaho-mqtt3as -lpaho-mqtt3c -lpaho-mqtt3cs -DNO_PERSISTENCE=1 -o libMqForEasyD.so

ldd libMqForEasyD.so
