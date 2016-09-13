{
"ServiceType":"viedoPlayer",
"Data_Type": "Realtime" / "Recording",
"URL":"rtsp://172.17.4.9:8888/realtime/$carleapmotorCLOUDE20160727inform/1/realtime.sdp",
"VideoType":"SD" / "HD",
"Operation":"Stop" / "Begin",
}

EasyDarwin与车机MQTT的实时视频通讯JSON发送

{

"ServiceType":"viedoPlayer",           //发送视频信息

"Data_Type":" Realtime",

"URL":"rtsp://ip:Port/realtime/$clientid/realtime.sdp",

"VideoType":"SD",                              //HD高清        SD标清

"Operation":" Begin"  / "Stop"

}  

EasyDarwin与车机MQTT的录像通讯JSON发送

{

"ServiceType":"viedoPlayer",           //发送视频信息

"Data_Type":" Recording",

"URL":"rtsp://ip:Port/record/$clientid/20140820163420.sdp",

"VideoType":"SD",                              //HD高清        SD标清

"CurrentTime":"0",                             //默认单位为秒，录像拖动时需要

"Operation":" Begin"

}  

发送JSON的Topic:" /clientID/videoinfoAsk" 


realtime url:
OPTIONS rtsp://10.30.16.216:8888/realtime/$1234/0/realtime.sdp RTSP/1.0\r\n
CSeq: 17\r\n

record
rtsp://172.17.4.9:8888/record/$carleapmotorCLOUDE20160727inform/1/2016-08-30_113613.sdp 


test:
rtsp://172.17.4.9:8888/realtime/$1234/1/realtime.sdp

play record in EasyDarwin:
rtsp://172.17.4.9:8888/testAfterHint.mp4
rtsp://120.27.188.84:8888/testAfterHint.mp4