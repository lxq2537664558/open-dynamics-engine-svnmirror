# Microsoft Developer Studio Project File - Name="drawstuff" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=drawstuff - Win32 DebugDLL
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "drawstuff.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "drawstuff.mak" CFG="drawstuff - Win32 DebugDLL"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "drawstuff - Win32 ReleaseLib" (based on "Win32 (x86) Static Library")
!MESSAGE "drawstuff - Win32 DebugLib" (based on "Win32 (x86) Static Library")
!MESSAGE "drawstuff - Win32 ReleaseDLL" (based on "Win32 (x86) Static Library")
!MESSAGE "drawstuff - Win32 DebugDLL" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "drawstuff - Win32 ReleaseLib"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "../../lib/ReleaseLib"
# PROP BASE Intermediate_Dir "obj/ReleaseLib"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "../../lib/ReleaseLib"
# PROP Intermediate_Dir "obj/ReleaseLib"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /W3 /Gm /GR /GX /ZI /Od /I "../../include" /D "_CRT_SECURE_NO_DEPRECATE" /D "WIN32" /YX /FD /GZ /c
# ADD CPP /nologo /MDd /W3 /Gm /GR /GX /ZI /Od /I "../../include" /D "_CRT_SECURE_NO_DEPRECATE" /D "WIN32" /YX /FD /GZ /c
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "drawstuff - Win32 DebugLib"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "../../lib/DebugLib"
# PROP BASE Intermediate_Dir "obj/DebugLib"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "../../lib/DebugLib"
# PROP Intermediate_Dir "obj/DebugLib"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /W3 /Gm /GR /GX /ZI /Od /I "../../include" /D "_CRT_SECURE_NO_DEPRECATE" /D "WIN32" /YX /FD /GZ /c
# ADD CPP /nologo /MDd /W3 /Gm /GR /GX /ZI /Od /I "../../include" /D "_CRT_SECURE_NO_DEPRECATE" /D "WIN32" /YX /FD /GZ /c
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "drawstuff - Win32 ReleaseDLL"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "../../lib/ReleaseDLL"
# PROP BASE Intermediate_Dir "obj/ReleaseDLL"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "../../lib/ReleaseDLL"
# PROP Intermediate_Dir "obj/ReleaseDLL"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /W3 /Gm /GR /GX /ZI /Od /I "../../include" /D "_CRT_SECURE_NO_DEPRECATE" /D "WIN32" /YX /FD /GZ /c
# ADD CPP /nologo /MDd /W3 /Gm /GR /GX /ZI /Od /I "../../include" /D "_CRT_SECURE_NO_DEPRECATE" /D "WIN32" /YX /FD /GZ /c
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "drawstuff - Win32 DebugDLL"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "../../lib/DebugDLL"
# PROP BASE Intermediate_Dir "obj/DebugDLL"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "../../lib/DebugDLL"
# PROP Intermediate_Dir "obj/DebugDLL"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /W3 /Gm /GR /GX /ZI /Od /I "../../include" /D "_CRT_SECURE_NO_DEPRECATE" /D "WIN32" /YX /FD /GZ /c
# ADD CPP /nologo /MDd /W3 /Gm /GR /GX /ZI /Od /I "../../include" /D "_CRT_SECURE_NO_DEPRECATE" /D "WIN32" /YX /FD /GZ /c
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ENDIF

# Begin Target

# Name "drawstuff - Win32 ReleaseLib"
# Name "drawstuff - Win32 DebugLib"
# Name "drawstuff - Win32 ReleaseDLL"
# Name "drawstuff - Win32 DebugDLL"
# Begin Group "include"

# PROP Default_Filter ""
# Begin Group "drawstuff"

# PROP Default_Filter ""
# Begin Source File

SOURCE=../../include/drawstuff/drawstuff.h
# End Source File
# Begin Source File

SOURCE=../../include/drawstuff/version.h
# End Source File
# End Group
# End Group
# Begin Group "drawstuff"

# PROP Default_Filter ""
# Begin Group "src"

# PROP Default_Filter ""
# Begin Source File

SOURCE=../../drawstuff/src/internal.h
# End Source File
# Begin Source File

SOURCE=../../drawstuff/src/drawstuff.cpp
# End Source File
# Begin Source File

SOURCE=../../drawstuff/src/resource.h
# End Source File
# Begin Source File

SOURCE=../../drawstuff/src/resources.rc
# End Source File
# Begin Source File

SOURCE=../../drawstuff/src/windows.cpp
# End Source File
# End Group
# End Group
# End Target
# End Project
