#
#  "$Id: Makefile 7706 2009-10-23 02:56:08Z ye_hao $"
#
#  Copyright (c)1992-2007, ZheJiang Dahua Technology Stock CO.LTD.
#  All Rights Reserved.
#
#  Description:	
#    make       编译应用程序，目标文件放在./Images/user/bin下，同时将目标文件拷贝
#               一份到服务器的调试目录。
#    make clean 清空应用程序中间文件。
#    make pack  制作升级程序包，将当前目录下Images目录下的文件做成镜像镜像文件。
#    make packet制作升级程序包，将当前目录下Images目录下的文件做成镜像镜像文件，自动化编译使用。
#    make zip   将所有的升级包文件再次压缩成zip包。
#
#  Revisions:		Year-Month-Day  SVN-Author  Modification
#
#CROSS = gcc
#CROSS = arm-linux-gnueabihf-
#COMM_LIBS = CommLibs/*
CPP	= @echo " g++ $@"; $(CROSS)g++
CC	= @echo " gcc $@"; $(CROSS)gcc
LD	= @echo " ld  $@"; $(CROSS)ld
AR  = @echo " ar  $@"; $(CROSS)ar
RM	= @echo " RM	$@"; rm -f
STRIP	= @echo " strip  $@"; $(CROSS)strip
XCP := sudo xcp
CP  := cp -f

CFLAGS	+= -I./include 
CFLAGS += -I./zlib/out/include
CFLAGS += -Wall -O2 -Os -g
#CFLAGS += -D_REENTRANT -msoft-float 
#CFLAGS += -pie -fPIE 
	
DYNAMIC_LIB=lib
LDFLAGS += -lpthread 
LDFLAGS +=-lc
LDFLAGS += -ldl 
LDFLAGS += -lrt 
LDFLAGS += -lz
#LDFLAGS += -L./zlib/out/lib -lz 
#fLDFLAGS += -static
#LDFLAGS += -L../Lib -llibmp4v2

LIBS =\
	lib/libavcodec.a \
	lib/libavdevice.a \
	lib/libavfilter.a \
	lib/libavformat.a \
	lib/libavutil.a \
	lib/libswresample.a \
	lib/libswscale.a 

OBJS = 	src/main.o	


BUILD_DIR=/home/$(LOGNAME)
SHARE = /share/$(LOGNAME)#不同编译服务器请手动自行修改此参数
ifeq ($(LOGNAME),jenkins) #第三方编译服务器特殊处理
	BUILD_DIR:=$(shell pwd)/Dist
endif
ifeq ($(LOGNAME),root) 		#第三方编译服务器特殊处理
	BUILD_DIR:=$(shell pwd)/Dist		
endif

TARGET_FILE_NAME= out/ffmTest
TARGET 			= 	$(TARGET_FILE_NAME)
TARGET_PACK	= 	/bin/$(TARGET_FILE_NAME)
SYS_DIR		 := 	./



PACK_DATE=${shell date +%Y%m%d}
PACK_SEC=${shell date +%Y%m%d%H%M%S}

all: $(TARGET)

$(TARGET):  $(OBJS) $(LIBS)
	$(CPP) -o $@ $^ $(LDFLAGS) $(LIBS) -g
#./Tools/upx --best $(TARGET_PACK)
debug:	$(OBJS) $(LIBS)
	$(CPP) -o $(TARGET) $^ $(LDFLAGS) -g
	$(XCP) $(TARGET) $(SHARE)	#拷贝到服务器供调试之用

.c.o:
	$(CC) -c $(CFLAGS) $^ -o $@

.cpp.o:
	$(CPP) -c $(CFLAGS) $^ -o $@

clean:
	$(RM) $(TARGET) $(TARGET_PACK) $(OBJS) 
 
sys: a8_video m3_vpss m3_video dsp
a8_video:
	$(MAKE)  -C $(SYS_DIR)	a8_video
 
m3_vpss:
	$(MAKE)  -C $(SYS_DIR)	m3_vpss
 
m3_video:
	$(MAKE)  -C $(SYS_DIR)	m3_video

dsp:
	$(MAKE)  -C $(SYS_DIR) 	dsp

app:	clean all
pack:	sys app	packall	
packall:	app pack1	
pack1:
	$(MAKE)  -fbuild/PackRule.mk pack PACK_SEC=$(PACK_DATE)  PACK_DATE=$(PACK_DATE) BUILD_DIR=$(BUILD_DIR)
zip:
	$(MAKE)  -fbuild/PackRule.mk zip PACK_SEC=$(PACK_DATE)  PACK_DATE=$(PACK_DATE) BUILD_DIR=$(BUILD_DIR)
packet: sys app
	$(MAKE)  -fbuild/PackRule.mk packet PACK_SEC=$(PACK_SEC)  PACK_DATE=$(PACK_DATE) BUILD_DIR=$(BUILD_DIR)
fpga:
	$(MAKE)  -fbuild/PackRule.mk fpga PACK_SEC=$(PACK_DATE)  PACK_DATE=$(PACK_DATE) BUILD_DIR=$(BUILD_DIR)
custom:
	$(MAKE)  -fbuild/PackRule.mk custom PACK_SEC=$(PACK_DATE)  PACK_DATE=$(PACK_DATE) BUILD_DIR=$(BUILD_DIR)
