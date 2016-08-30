#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux
CND_DLIB_EXT=so
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/_ext/4ebe8203/QTAccessFile.o \
	${OBJECTDIR}/_ext/4ebe8203/QTSS3GPPModuleUtils.o \
	${OBJECTDIR}/_ext/4ebe8203/QTSSModuleUtils.o \
	${OBJECTDIR}/_ext/4ebe8203/QTSSRollingLog.o \
	${OBJECTDIR}/_ext/4ebe8203/SDPSourceInfo.o \
	${OBJECTDIR}/_ext/4ebe8203/SourceInfo.o \
	${OBJECTDIR}/_ext/e2452cd6/QTSSAccessLogModule.o \
	${OBJECTDIR}/_ext/b61dda26/AccessChecker.o \
	${OBJECTDIR}/_ext/b61dda26/QTSSAccessModule.o \
	${OBJECTDIR}/_ext/daccf2a5/AdminElementNode.o \
	${OBJECTDIR}/_ext/daccf2a5/AdminQuery.o \
	${OBJECTDIR}/_ext/daccf2a5/QTSSAdminModule.o \
	${OBJECTDIR}/_ext/b3817dbe/QTSSFileModule.o \
	${OBJECTDIR}/_ext/18066c25/QTSSFlowControlModule.o \
	${OBJECTDIR}/_ext/328d0d66/QTSSHttpFileModule.o \
	${OBJECTDIR}/_ext/6092d8f4/QTSSMP3StreamingModule.o \
	${OBJECTDIR}/_ext/7065f070/QTSSPosixFileSysModule.o \
	${OBJECTDIR}/_ext/e959d5a0/QTSSRTPFileModule.o \
	${OBJECTDIR}/_ext/e959d5a0/RTPFileSession.o \
	${OBJECTDIR}/_ext/a67472f6/QTSSReflectorModule.o \
	${OBJECTDIR}/_ext/a67472f6/QTSSRelayModule.o \
	${OBJECTDIR}/_ext/a67472f6/RCFSourceInfo.o \
	${OBJECTDIR}/_ext/a67472f6/RTPSessionOutput.o \
	${OBJECTDIR}/_ext/a67472f6/RTSPSourceInfo.o \
	${OBJECTDIR}/_ext/a67472f6/ReflectorSession.o \
	${OBJECTDIR}/_ext/a67472f6/ReflectorStream.o \
	${OBJECTDIR}/_ext/a67472f6/RelayOutput.o \
	${OBJECTDIR}/_ext/a67472f6/RelaySDPSourceInfo.o \
	${OBJECTDIR}/_ext/a67472f6/RelaySession.o \
	${OBJECTDIR}/_ext/a67472f6/SequenceNumberMap.o \
	${OBJECTDIR}/_ext/eaced661/QTSSWebDebugModule.o \
	${OBJECTDIR}/_ext/73281bad/QTSSWebStatsModule.o \
	${OBJECTDIR}/_ext/81e7bb4c/QTSS_Private.o \
	${OBJECTDIR}/_ext/b9fc5c32/HTTPProtocol.o \
	${OBJECTDIR}/_ext/b9fc5c32/HTTPRequest.o \
	${OBJECTDIR}/_ext/dfc17a71/OSMemory.o \
	${OBJECTDIR}/_ext/7d159be9/FilePrefsSource.o \
	${OBJECTDIR}/_ext/7d159be9/XMLParser.o \
	${OBJECTDIR}/_ext/7d159be9/XMLPrefsParser.o \
	${OBJECTDIR}/_ext/89f4a359/RTCPAPPNADUPacket.o \
	${OBJECTDIR}/_ext/89f4a359/RTCPAPPPacket.o \
	${OBJECTDIR}/_ext/89f4a359/RTCPAPPQTSSPacket.o \
	${OBJECTDIR}/_ext/89f4a359/RTCPAckPacket.o \
	${OBJECTDIR}/_ext/89f4a359/RTCPPacket.o \
	${OBJECTDIR}/_ext/89f4a359/RTCPSRPacket.o \
	${OBJECTDIR}/_ext/15d55233/RTPMetaInfoPacket.o \
	${OBJECTDIR}/_ext/b4aa5f4c/ClientSocket.o \
	${OBJECTDIR}/_ext/b4aa5f4c/RTSPClient.o \
	${OBJECTDIR}/_ext/cbf2331e/InternalStdLib.o \
	${OBJECTDIR}/GenerateXMLPrefs.o \
	${OBJECTDIR}/QTSSCallbacks.o \
	${OBJECTDIR}/QTSSDataConverter.o \
	${OBJECTDIR}/QTSSDictionary.o \
	${OBJECTDIR}/QTSSErrorLogModule.o \
	${OBJECTDIR}/QTSSExpirationDate.o \
	${OBJECTDIR}/QTSSFile.o \
	${OBJECTDIR}/QTSSMessages.o \
	${OBJECTDIR}/QTSSModule.o \
	${OBJECTDIR}/QTSSPrefs.o \
	${OBJECTDIR}/QTSSSocket.o \
	${OBJECTDIR}/QTSSUserProfile.o \
	${OBJECTDIR}/QTSServer.o \
	${OBJECTDIR}/QTSServerInterface.o \
	${OBJECTDIR}/QTSServerPrefs.o \
	${OBJECTDIR}/RTCPTask.o \
	${OBJECTDIR}/RTPBandwidthTracker.o \
	${OBJECTDIR}/RTPOverbufferWindow.o \
	${OBJECTDIR}/RTPPacketResender.o \
	${OBJECTDIR}/RTPSession.o \
	${OBJECTDIR}/RTPSession3GPP.o \
	${OBJECTDIR}/RTPSessionInterface.o \
	${OBJECTDIR}/RTPStream.o \
	${OBJECTDIR}/RTPStream3gpp.o \
	${OBJECTDIR}/RTSPProtocol.o \
	${OBJECTDIR}/RTSPRequest.o \
	${OBJECTDIR}/RTSPRequest3GPP.o \
	${OBJECTDIR}/RTSPRequestInterface.o \
	${OBJECTDIR}/RTSPRequestStream.o \
	${OBJECTDIR}/RTSPResponseStream.o \
	${OBJECTDIR}/RTSPSession.o \
	${OBJECTDIR}/RTSPSession3GPP.o \
	${OBJECTDIR}/RTSPSessionInterface.o \
	${OBJECTDIR}/RunServer.o \
	${OBJECTDIR}/main.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=-pipe -Wno-format-y2k
CXXFLAGS=-pipe -Wno-format-y2k

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=-L../${CND_CONF}

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ../${CND_CONF}/EasyDarwin

../${CND_CONF}/EasyDarwin: ${OBJECTFILES}
	${MKDIR} -p ../${CND_CONF}
	${LINK.cc} -o ../${CND_CONF}/EasyDarwin ${OBJECTFILES} ${LDLIBSOPTIONS} -lpthread -ldl -lstdc++ -lm -lcrypt -lCommonUtilitiesLib -lQTFileLib

${OBJECTDIR}/_ext/4ebe8203/QTAccessFile.o: ../APICommonCode/QTAccessFile.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/4ebe8203
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/4ebe8203/QTAccessFile.o ../APICommonCode/QTAccessFile.cpp

${OBJECTDIR}/_ext/4ebe8203/QTSS3GPPModuleUtils.o: ../APICommonCode/QTSS3GPPModuleUtils.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/4ebe8203
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/4ebe8203/QTSS3GPPModuleUtils.o ../APICommonCode/QTSS3GPPModuleUtils.cpp

${OBJECTDIR}/_ext/4ebe8203/QTSSModuleUtils.o: ../APICommonCode/QTSSModuleUtils.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/4ebe8203
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/4ebe8203/QTSSModuleUtils.o ../APICommonCode/QTSSModuleUtils.cpp

${OBJECTDIR}/_ext/4ebe8203/QTSSRollingLog.o: ../APICommonCode/QTSSRollingLog.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/4ebe8203
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/4ebe8203/QTSSRollingLog.o ../APICommonCode/QTSSRollingLog.cpp

${OBJECTDIR}/_ext/4ebe8203/SDPSourceInfo.o: ../APICommonCode/SDPSourceInfo.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/4ebe8203
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/4ebe8203/SDPSourceInfo.o ../APICommonCode/SDPSourceInfo.cpp

${OBJECTDIR}/_ext/4ebe8203/SourceInfo.o: ../APICommonCode/SourceInfo.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/4ebe8203
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/4ebe8203/SourceInfo.o ../APICommonCode/SourceInfo.cpp

${OBJECTDIR}/_ext/e2452cd6/QTSSAccessLogModule.o: ../APIModules/QTSSAccessLogModule/QTSSAccessLogModule.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/e2452cd6
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e2452cd6/QTSSAccessLogModule.o ../APIModules/QTSSAccessLogModule/QTSSAccessLogModule.cpp

${OBJECTDIR}/_ext/b61dda26/AccessChecker.o: ../APIModules/QTSSAccessModule/AccessChecker.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/b61dda26
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/b61dda26/AccessChecker.o ../APIModules/QTSSAccessModule/AccessChecker.cpp

${OBJECTDIR}/_ext/b61dda26/QTSSAccessModule.o: ../APIModules/QTSSAccessModule/QTSSAccessModule.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/b61dda26
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/b61dda26/QTSSAccessModule.o ../APIModules/QTSSAccessModule/QTSSAccessModule.cpp

${OBJECTDIR}/_ext/daccf2a5/AdminElementNode.o: ../APIModules/QTSSAdminModule/AdminElementNode.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/daccf2a5
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/daccf2a5/AdminElementNode.o ../APIModules/QTSSAdminModule/AdminElementNode.cpp

${OBJECTDIR}/_ext/daccf2a5/AdminQuery.o: ../APIModules/QTSSAdminModule/AdminQuery.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/daccf2a5
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/daccf2a5/AdminQuery.o ../APIModules/QTSSAdminModule/AdminQuery.cpp

${OBJECTDIR}/_ext/daccf2a5/QTSSAdminModule.o: ../APIModules/QTSSAdminModule/QTSSAdminModule.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/daccf2a5
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/daccf2a5/QTSSAdminModule.o ../APIModules/QTSSAdminModule/QTSSAdminModule.cpp

${OBJECTDIR}/_ext/b3817dbe/QTSSFileModule.o: ../APIModules/QTSSFileModule/QTSSFileModule.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/b3817dbe
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/b3817dbe/QTSSFileModule.o ../APIModules/QTSSFileModule/QTSSFileModule.cpp

${OBJECTDIR}/_ext/18066c25/QTSSFlowControlModule.o: ../APIModules/QTSSFlowControlModule/QTSSFlowControlModule.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/18066c25
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/18066c25/QTSSFlowControlModule.o ../APIModules/QTSSFlowControlModule/QTSSFlowControlModule.cpp

${OBJECTDIR}/_ext/328d0d66/QTSSHttpFileModule.o: ../APIModules/QTSSHttpFileModule/QTSSHttpFileModule.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/328d0d66
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/328d0d66/QTSSHttpFileModule.o ../APIModules/QTSSHttpFileModule/QTSSHttpFileModule.cpp

${OBJECTDIR}/_ext/6092d8f4/QTSSMP3StreamingModule.o: ../APIModules/QTSSMP3StreamingModule/QTSSMP3StreamingModule.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6092d8f4
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6092d8f4/QTSSMP3StreamingModule.o ../APIModules/QTSSMP3StreamingModule/QTSSMP3StreamingModule.cpp

${OBJECTDIR}/_ext/7065f070/QTSSPosixFileSysModule.o: ../APIModules/QTSSPOSIXFileSysModule/QTSSPosixFileSysModule.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/7065f070
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7065f070/QTSSPosixFileSysModule.o ../APIModules/QTSSPOSIXFileSysModule/QTSSPosixFileSysModule.cpp

${OBJECTDIR}/_ext/e959d5a0/QTSSRTPFileModule.o: ../APIModules/QTSSRTPFileModule/QTSSRTPFileModule.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/e959d5a0
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e959d5a0/QTSSRTPFileModule.o ../APIModules/QTSSRTPFileModule/QTSSRTPFileModule.cpp

${OBJECTDIR}/_ext/e959d5a0/RTPFileSession.o: ../APIModules/QTSSRTPFileModule/RTPFileSession.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/e959d5a0
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/e959d5a0/RTPFileSession.o ../APIModules/QTSSRTPFileModule/RTPFileSession.cpp

${OBJECTDIR}/_ext/a67472f6/QTSSReflectorModule.o: ../APIModules/QTSSReflectorModule/QTSSReflectorModule.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/a67472f6
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a67472f6/QTSSReflectorModule.o ../APIModules/QTSSReflectorModule/QTSSReflectorModule.cpp

${OBJECTDIR}/_ext/a67472f6/QTSSRelayModule.o: ../APIModules/QTSSReflectorModule/QTSSRelayModule.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/a67472f6
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a67472f6/QTSSRelayModule.o ../APIModules/QTSSReflectorModule/QTSSRelayModule.cpp

${OBJECTDIR}/_ext/a67472f6/RCFSourceInfo.o: ../APIModules/QTSSReflectorModule/RCFSourceInfo.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/a67472f6
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a67472f6/RCFSourceInfo.o ../APIModules/QTSSReflectorModule/RCFSourceInfo.cpp

${OBJECTDIR}/_ext/a67472f6/RTPSessionOutput.o: ../APIModules/QTSSReflectorModule/RTPSessionOutput.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/a67472f6
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a67472f6/RTPSessionOutput.o ../APIModules/QTSSReflectorModule/RTPSessionOutput.cpp

${OBJECTDIR}/_ext/a67472f6/RTSPSourceInfo.o: ../APIModules/QTSSReflectorModule/RTSPSourceInfo.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/a67472f6
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a67472f6/RTSPSourceInfo.o ../APIModules/QTSSReflectorModule/RTSPSourceInfo.cpp

${OBJECTDIR}/_ext/a67472f6/ReflectorSession.o: ../APIModules/QTSSReflectorModule/ReflectorSession.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/a67472f6
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a67472f6/ReflectorSession.o ../APIModules/QTSSReflectorModule/ReflectorSession.cpp

${OBJECTDIR}/_ext/a67472f6/ReflectorStream.o: ../APIModules/QTSSReflectorModule/ReflectorStream.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/a67472f6
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a67472f6/ReflectorStream.o ../APIModules/QTSSReflectorModule/ReflectorStream.cpp

${OBJECTDIR}/_ext/a67472f6/RelayOutput.o: ../APIModules/QTSSReflectorModule/RelayOutput.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/a67472f6
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a67472f6/RelayOutput.o ../APIModules/QTSSReflectorModule/RelayOutput.cpp

${OBJECTDIR}/_ext/a67472f6/RelaySDPSourceInfo.o: ../APIModules/QTSSReflectorModule/RelaySDPSourceInfo.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/a67472f6
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a67472f6/RelaySDPSourceInfo.o ../APIModules/QTSSReflectorModule/RelaySDPSourceInfo.cpp

${OBJECTDIR}/_ext/a67472f6/RelaySession.o: ../APIModules/QTSSReflectorModule/RelaySession.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/a67472f6
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a67472f6/RelaySession.o ../APIModules/QTSSReflectorModule/RelaySession.cpp

${OBJECTDIR}/_ext/a67472f6/SequenceNumberMap.o: ../APIModules/QTSSReflectorModule/SequenceNumberMap.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/a67472f6
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a67472f6/SequenceNumberMap.o ../APIModules/QTSSReflectorModule/SequenceNumberMap.cpp

${OBJECTDIR}/_ext/eaced661/QTSSWebDebugModule.o: ../APIModules/QTSSWebDebugModule/QTSSWebDebugModule.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/eaced661
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/eaced661/QTSSWebDebugModule.o ../APIModules/QTSSWebDebugModule/QTSSWebDebugModule.cpp

${OBJECTDIR}/_ext/73281bad/QTSSWebStatsModule.o: ../APIModules/QTSSWebStatsModule/QTSSWebStatsModule.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/73281bad
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/73281bad/QTSSWebStatsModule.o ../APIModules/QTSSWebStatsModule/QTSSWebStatsModule.cpp

${OBJECTDIR}/_ext/81e7bb4c/QTSS_Private.o: ../APIStubLib/QTSS_Private.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/81e7bb4c
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/81e7bb4c/QTSS_Private.o ../APIStubLib/QTSS_Private.cpp

${OBJECTDIR}/_ext/b9fc5c32/HTTPProtocol.o: ../HTTPUtilitiesLib/HTTPProtocol.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/b9fc5c32
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/b9fc5c32/HTTPProtocol.o ../HTTPUtilitiesLib/HTTPProtocol.cpp

${OBJECTDIR}/_ext/b9fc5c32/HTTPRequest.o: ../HTTPUtilitiesLib/HTTPRequest.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/b9fc5c32
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/b9fc5c32/HTTPRequest.o ../HTTPUtilitiesLib/HTTPRequest.cpp

${OBJECTDIR}/_ext/dfc17a71/OSMemory.o: ../OSMemoryLib/OSMemory.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/dfc17a71
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/dfc17a71/OSMemory.o ../OSMemoryLib/OSMemory.cpp

${OBJECTDIR}/_ext/7d159be9/FilePrefsSource.o: ../PrefsSourceLib/FilePrefsSource.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/7d159be9
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7d159be9/FilePrefsSource.o ../PrefsSourceLib/FilePrefsSource.cpp

${OBJECTDIR}/_ext/7d159be9/XMLParser.o: ../PrefsSourceLib/XMLParser.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/7d159be9
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7d159be9/XMLParser.o ../PrefsSourceLib/XMLParser.cpp

${OBJECTDIR}/_ext/7d159be9/XMLPrefsParser.o: ../PrefsSourceLib/XMLPrefsParser.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/7d159be9
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/7d159be9/XMLPrefsParser.o ../PrefsSourceLib/XMLPrefsParser.cpp

${OBJECTDIR}/_ext/89f4a359/RTCPAPPNADUPacket.o: ../RTCPUtilitiesLib/RTCPAPPNADUPacket.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/89f4a359
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/89f4a359/RTCPAPPNADUPacket.o ../RTCPUtilitiesLib/RTCPAPPNADUPacket.cpp

${OBJECTDIR}/_ext/89f4a359/RTCPAPPPacket.o: ../RTCPUtilitiesLib/RTCPAPPPacket.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/89f4a359
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/89f4a359/RTCPAPPPacket.o ../RTCPUtilitiesLib/RTCPAPPPacket.cpp

${OBJECTDIR}/_ext/89f4a359/RTCPAPPQTSSPacket.o: ../RTCPUtilitiesLib/RTCPAPPQTSSPacket.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/89f4a359
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/89f4a359/RTCPAPPQTSSPacket.o ../RTCPUtilitiesLib/RTCPAPPQTSSPacket.cpp

${OBJECTDIR}/_ext/89f4a359/RTCPAckPacket.o: ../RTCPUtilitiesLib/RTCPAckPacket.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/89f4a359
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/89f4a359/RTCPAckPacket.o ../RTCPUtilitiesLib/RTCPAckPacket.cpp

${OBJECTDIR}/_ext/89f4a359/RTCPPacket.o: ../RTCPUtilitiesLib/RTCPPacket.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/89f4a359
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/89f4a359/RTCPPacket.o ../RTCPUtilitiesLib/RTCPPacket.cpp

${OBJECTDIR}/_ext/89f4a359/RTCPSRPacket.o: ../RTCPUtilitiesLib/RTCPSRPacket.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/89f4a359
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/89f4a359/RTCPSRPacket.o ../RTCPUtilitiesLib/RTCPSRPacket.cpp

${OBJECTDIR}/_ext/15d55233/RTPMetaInfoPacket.o: ../RTPMetaInfoLib/RTPMetaInfoPacket.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/15d55233
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/15d55233/RTPMetaInfoPacket.o ../RTPMetaInfoLib/RTPMetaInfoPacket.cpp

${OBJECTDIR}/_ext/b4aa5f4c/ClientSocket.o: ../RTSPClientLib/ClientSocket.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/b4aa5f4c
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/b4aa5f4c/ClientSocket.o ../RTSPClientLib/ClientSocket.cpp

${OBJECTDIR}/_ext/b4aa5f4c/RTSPClient.o: ../RTSPClientLib/RTSPClient.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/b4aa5f4c
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/b4aa5f4c/RTSPClient.o ../RTSPClientLib/RTSPClient.cpp

${OBJECTDIR}/_ext/cbf2331e/InternalStdLib.o: ../SafeStdLib/InternalStdLib.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/cbf2331e
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/cbf2331e/InternalStdLib.o ../SafeStdLib/InternalStdLib.cpp

${OBJECTDIR}/GenerateXMLPrefs.o: GenerateXMLPrefs.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/GenerateXMLPrefs.o GenerateXMLPrefs.cpp

${OBJECTDIR}/QTSSCallbacks.o: QTSSCallbacks.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/QTSSCallbacks.o QTSSCallbacks.cpp

${OBJECTDIR}/QTSSDataConverter.o: QTSSDataConverter.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/QTSSDataConverter.o QTSSDataConverter.cpp

${OBJECTDIR}/QTSSDictionary.o: QTSSDictionary.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/QTSSDictionary.o QTSSDictionary.cpp

${OBJECTDIR}/QTSSErrorLogModule.o: QTSSErrorLogModule.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/QTSSErrorLogModule.o QTSSErrorLogModule.cpp

${OBJECTDIR}/QTSSExpirationDate.o: QTSSExpirationDate.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/QTSSExpirationDate.o QTSSExpirationDate.cpp

${OBJECTDIR}/QTSSFile.o: QTSSFile.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/QTSSFile.o QTSSFile.cpp

${OBJECTDIR}/QTSSMessages.o: QTSSMessages.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/QTSSMessages.o QTSSMessages.cpp

${OBJECTDIR}/QTSSModule.o: QTSSModule.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/QTSSModule.o QTSSModule.cpp

${OBJECTDIR}/QTSSPrefs.o: QTSSPrefs.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/QTSSPrefs.o QTSSPrefs.cpp

${OBJECTDIR}/QTSSSocket.o: QTSSSocket.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/QTSSSocket.o QTSSSocket.cpp

${OBJECTDIR}/QTSSUserProfile.o: QTSSUserProfile.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/QTSSUserProfile.o QTSSUserProfile.cpp

${OBJECTDIR}/QTSServer.o: QTSServer.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/QTSServer.o QTSServer.cpp

${OBJECTDIR}/QTSServerInterface.o: QTSServerInterface.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/QTSServerInterface.o QTSServerInterface.cpp

${OBJECTDIR}/QTSServerPrefs.o: QTSServerPrefs.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/QTSServerPrefs.o QTSServerPrefs.cpp

${OBJECTDIR}/RTCPTask.o: RTCPTask.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/RTCPTask.o RTCPTask.cpp

${OBJECTDIR}/RTPBandwidthTracker.o: RTPBandwidthTracker.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/RTPBandwidthTracker.o RTPBandwidthTracker.cpp

${OBJECTDIR}/RTPOverbufferWindow.o: RTPOverbufferWindow.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/RTPOverbufferWindow.o RTPOverbufferWindow.cpp

${OBJECTDIR}/RTPPacketResender.o: RTPPacketResender.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/RTPPacketResender.o RTPPacketResender.cpp

${OBJECTDIR}/RTPSession.o: RTPSession.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/RTPSession.o RTPSession.cpp

${OBJECTDIR}/RTPSession3GPP.o: RTPSession3GPP.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/RTPSession3GPP.o RTPSession3GPP.cpp

${OBJECTDIR}/RTPSessionInterface.o: RTPSessionInterface.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/RTPSessionInterface.o RTPSessionInterface.cpp

${OBJECTDIR}/RTPStream.o: RTPStream.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/RTPStream.o RTPStream.cpp

${OBJECTDIR}/RTPStream3gpp.o: RTPStream3gpp.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/RTPStream3gpp.o RTPStream3gpp.cpp

${OBJECTDIR}/RTSPProtocol.o: RTSPProtocol.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/RTSPProtocol.o RTSPProtocol.cpp

${OBJECTDIR}/RTSPRequest.o: RTSPRequest.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/RTSPRequest.o RTSPRequest.cpp

${OBJECTDIR}/RTSPRequest3GPP.o: RTSPRequest3GPP.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/RTSPRequest3GPP.o RTSPRequest3GPP.cpp

${OBJECTDIR}/RTSPRequestInterface.o: RTSPRequestInterface.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/RTSPRequestInterface.o RTSPRequestInterface.cpp

${OBJECTDIR}/RTSPRequestStream.o: RTSPRequestStream.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/RTSPRequestStream.o RTSPRequestStream.cpp

${OBJECTDIR}/RTSPResponseStream.o: RTSPResponseStream.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/RTSPResponseStream.o RTSPResponseStream.cpp

${OBJECTDIR}/RTSPSession.o: RTSPSession.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/RTSPSession.o RTSPSession.cpp

${OBJECTDIR}/RTSPSession3GPP.o: RTSPSession3GPP.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/RTSPSession3GPP.o RTSPSession3GPP.cpp

${OBJECTDIR}/RTSPSessionInterface.o: RTSPSessionInterface.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/RTSPSessionInterface.o RTSPSessionInterface.cpp

${OBJECTDIR}/RunServer.o: RunServer.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/RunServer.o RunServer.cpp

${OBJECTDIR}/main.o: main.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -D_REENTRANT -D__USE_POSIX -D__linux__ -I. -I.. -I../QTFileLib -I../OSMemoryLib -I../RTSPClientLib -I../APIModules -I../APICommonCode -I../APIModules/OSMemory_Modules -I../APIModules/QTSSAccessLogModule -I../APIModules/QTSSFileModule -I../APIModules/QTSSFlowControlModule -I../APIModules/QTSSReflectorModule -I../APIModules/QTSSSvrControlModule -I../APIModules/QTSSWebDebugModule -I../APIModules/QTSSWebStatsModule -I../APIModules/QTSSAuthorizeModule -I../APIModules/QTSSPOSIXFileSysModule -I../APIModules/QTSSAdminModule -I../APIModules/QTSSMP3StreamingModule -I../APIModules/QTSSRTPFileModule -I../APIModules/QTSSAccessModule -I../APIModules/QTSSHttpFileModule -I../QTFileTools/RTPFileGen.tproj -I../APIStubLib -I../CommonUtilitiesLib -I../RTCPUtilitiesLib -I../HTTPUtilitiesLib -I../RTPMetaInfoLib -I../PrefsSourceLib -include ../PlatformHeader.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/main.o main.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ../${CND_CONF}/EasyDarwin

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
