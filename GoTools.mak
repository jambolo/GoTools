# Microsoft Developer Studio Generated NMAKE File, Format Version 4.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

!IF "$(CFG)" == ""
CFG=GoTools - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to GoTools - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "GoTools - Win32 Release" && "$(CFG)" !=\
 "GoTools - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "GoTools.mak" CFG="GoTools - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "GoTools - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "GoTools - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 
################################################################################
# Begin Project
# PROP Target_Last_Scanned "GoTools - Win32 Debug"
MTL=mktyplib.exe
RSC=rc.exe
CPP=cl.exe

!IF  "$(CFG)" == "GoTools - Win32 Release"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
OUTDIR=.\Release
INTDIR=.\Release

ALL : "$(OUTDIR)\GoTools.exe" "$(OUTDIR)\GoTools.hlp"

CLEAN : 
	-@erase ".\Release\GoTools.exe"
	-@erase ".\Release\MainFrm.obj"
	-@erase ".\Release\GoTools.pch"
	-@erase ".\Release\Splash.obj"
	-@erase ".\Release\StdAfx.obj"
	-@erase ".\Release\GoToolsView.obj"
	-@erase ".\Release\GoTools.obj"
	-@erase ".\Release\GoToolsDoc.obj"
	-@erase ".\Release\GoTools.res"
	-@erase ".\Release\BrowseDialog.obj"
	-@erase ".\Release\GoTools.hlp"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Yu"stdafx.h" /c
# ADD CPP /nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Yu"stdafx.h" /c
CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D\
 "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)/GoTools.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/"\
 /c 
CPP_OBJS=.\Release/
CPP_SBRS=
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /win32
MTL_PROJ=/nologo /D "NDEBUG" /win32 
# ADD BASE RSC /l 0x409 /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0x409 /d "NDEBUG" /d "_AFXDLL"
RSC_PROJ=/l 0x409 /fo"$(INTDIR)/GoTools.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/GoTools.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /machine:I386
# ADD LINK32 /nologo /subsystem:windows /machine:I386
LINK32_FLAGS=/nologo /subsystem:windows /incremental:no\
 /pdb:"$(OUTDIR)/GoTools.pdb" /machine:I386 /out:"$(OUTDIR)/GoTools.exe" 
LINK32_OBJS= \
	"$(INTDIR)/MainFrm.obj" \
	"$(INTDIR)/Splash.obj" \
	"$(INTDIR)/StdAfx.obj" \
	"$(INTDIR)/GoToolsView.obj" \
	"$(INTDIR)/GoTools.obj" \
	"$(INTDIR)/GoToolsDoc.obj" \
	"$(INTDIR)/BrowseDialog.obj" \
	"$(INTDIR)/GoTools.res"

"$(OUTDIR)\GoTools.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "GoTools - Win32 Debug"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
OUTDIR=.\Debug
INTDIR=.\Debug

ALL : "$(OUTDIR)\GoTools.exe" "$(OUTDIR)\GoTools.hlp"

CLEAN : 
	-@erase ".\Debug\vc40.pdb"
	-@erase ".\Debug\GoTools.pch"
	-@erase ".\Debug\vc40.idb"
	-@erase ".\Debug\GoTools.exe"
	-@erase ".\Debug\GoToolsDoc.obj"
	-@erase ".\Debug\MainFrm.obj"
	-@erase ".\Debug\GoTools.obj"
	-@erase ".\Debug\GoToolsView.obj"
	-@erase ".\Debug\Splash.obj"
	-@erase ".\Debug\StdAfx.obj"
	-@erase ".\Debug\GoTools.res"
	-@erase ".\Debug\BrowseDialog.obj"
	-@erase ".\Debug\GoTools.ilk"
	-@erase ".\Debug\GoTools.pdb"
	-@erase ".\Debug\GoTools.hlp"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MDd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Yu"stdafx.h" /c
# ADD CPP /nologo /MDd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Yu"stdafx.h" /c
CPP_PROJ=/nologo /MDd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)/GoTools.pch" /Yu"stdafx.h"\
 /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\Debug/
CPP_SBRS=
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# ADD MTL /nologo /D "_DEBUG" /win32
MTL_PROJ=/nologo /D "_DEBUG" /win32 
# ADD BASE RSC /l 0x409 /d "_DEBUG" /d "_AFXDLL"
# ADD RSC /l 0x409 /d "_DEBUG" /d "_AFXDLL"
RSC_PROJ=/l 0x409 /fo"$(INTDIR)/GoTools.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/GoTools.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /debug /machine:I386
# ADD LINK32 /nologo /subsystem:windows /debug /machine:I386
LINK32_FLAGS=/nologo /subsystem:windows /incremental:yes\
 /pdb:"$(OUTDIR)/GoTools.pdb" /debug /machine:I386 /out:"$(OUTDIR)/GoTools.exe" 
LINK32_OBJS= \
	"$(INTDIR)/GoToolsDoc.obj" \
	"$(INTDIR)/MainFrm.obj" \
	"$(INTDIR)/GoTools.obj" \
	"$(INTDIR)/GoToolsView.obj" \
	"$(INTDIR)/Splash.obj" \
	"$(INTDIR)/StdAfx.obj" \
	"$(INTDIR)/BrowseDialog.obj" \
	"$(INTDIR)/GoTools.res"

"$(OUTDIR)\GoTools.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

################################################################################
# Begin Target

# Name "GoTools - Win32 Release"
# Name "GoTools - Win32 Debug"

!IF  "$(CFG)" == "GoTools - Win32 Release"

!ELSEIF  "$(CFG)" == "GoTools - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\ReadMe.txt

!IF  "$(CFG)" == "GoTools - Win32 Release"

!ELSEIF  "$(CFG)" == "GoTools - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\GoTools.cpp
DEP_CPP_GOTOO=\
	".\StdAfx.h"\
	".\GoTools.h"\
	".\MainFrm.h"\
	".\GoToolsDoc.h"\
	".\GoToolsView.h"\
	".\Splash.h"\
	

"$(INTDIR)\GoTools.obj" : $(SOURCE) $(DEP_CPP_GOTOO) "$(INTDIR)"\
 "$(INTDIR)\GoTools.pch"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\StdAfx.cpp
DEP_CPP_STDAF=\
	".\StdAfx.h"\
	

!IF  "$(CFG)" == "GoTools - Win32 Release"

# ADD CPP /Yc"stdafx.h"

BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D\
 "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)/GoTools.pch" /Yc"stdafx.h" /Fo"$(INTDIR)/"\
 /c $(SOURCE) \
	

"$(INTDIR)\StdAfx.obj" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\GoTools.pch" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "GoTools - Win32 Debug"

# ADD CPP /Yc"stdafx.h"

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)/GoTools.pch" /Yc"stdafx.h"\
 /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\StdAfx.obj" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\GoTools.pch" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\MainFrm.cpp
DEP_CPP_MAINF=\
	".\StdAfx.h"\
	".\GoTools.h"\
	".\MainFrm.h"\
	".\Splash.h"\
	

"$(INTDIR)\MainFrm.obj" : $(SOURCE) $(DEP_CPP_MAINF) "$(INTDIR)"\
 "$(INTDIR)\GoTools.pch"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\GoToolsDoc.cpp
DEP_CPP_GOTOOL=\
	".\StdAfx.h"\
	".\GoTools.h"\
	".\GoToolsDoc.h"\
	

"$(INTDIR)\GoToolsDoc.obj" : $(SOURCE) $(DEP_CPP_GOTOOL) "$(INTDIR)"\
 "$(INTDIR)\GoTools.pch"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\GoToolsView.cpp

!IF  "$(CFG)" == "GoTools - Win32 Release"

DEP_CPP_GOTOOLS=\
	".\StdAfx.h"\
	".\GoTools.h"\
	".\GoToolsDoc.h"\
	".\GoToolsView.h"\
	

"$(INTDIR)\GoToolsView.obj" : $(SOURCE) $(DEP_CPP_GOTOOLS) "$(INTDIR)"\
 "$(INTDIR)\GoTools.pch"


!ELSEIF  "$(CFG)" == "GoTools - Win32 Debug"

DEP_CPP_GOTOOLS=\
	".\StdAfx.h"\
	".\GoTools.h"\
	".\GoToolsDoc.h"\
	".\GoToolsView.h"\
	
NODEP_CPP_GOTOOLS=\
	".\CPen"\
	".\InvalidateRect"\
	

"$(INTDIR)\GoToolsView.obj" : $(SOURCE) $(DEP_CPP_GOTOOLS) "$(INTDIR)"\
 "$(INTDIR)\GoTools.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\GoTools.rc
DEP_RSC_GOTOOLS_=\
	".\res\GoTools.ico"\
	".\res\GoToolsDoc.ico"\
	".\res\Toolbar.bmp"\
	".\res\blacksto.bmp"\
	".\res\bitmap1.bmp"\
	".\Splsh16.bmp"\
	".\res\GoTools.rc2"\
	

"$(INTDIR)\GoTools.res" : $(SOURCE) $(DEP_RSC_GOTOOLS_) "$(INTDIR)"
   $(RSC) $(RSC_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\hlp\GoTools.hpj

!IF  "$(CFG)" == "GoTools - Win32 Release"

# Begin Custom Build - Making help file...
OutDir=.\Release
ProjDir=.
TargetName=GoTools
InputPath=.\hlp\GoTools.hpj

"$(OutDir)\$(TargetName).hlp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   "$(ProjDir)\makehelp.bat"

# End Custom Build

!ELSEIF  "$(CFG)" == "GoTools - Win32 Debug"

# Begin Custom Build - Making help file...
OutDir=.\Debug
ProjDir=.
TargetName=GoTools
InputPath=.\hlp\GoTools.hpj

"$(OutDir)\$(TargetName).hlp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   "$(ProjDir)\makehelp.bat"

# End Custom Build

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Splash.cpp
DEP_CPP_SPLAS=\
	".\StdAfx.h"\
	".\Splash.h"\
	

"$(INTDIR)\Splash.obj" : $(SOURCE) $(DEP_CPP_SPLAS) "$(INTDIR)"\
 "$(INTDIR)\GoTools.pch"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\BrowseDialog.cpp
DEP_CPP_BROWS=\
	".\StdAfx.h"\
	".\GoTools.h"\
	".\BrowseDialog.h"\
	

"$(INTDIR)\BrowseDialog.obj" : $(SOURCE) $(DEP_CPP_BROWS) "$(INTDIR)"\
 "$(INTDIR)\GoTools.pch"


# End Source File
# End Target
# End Project
################################################################################
################################################################################
# Section GoTools : {B6805000-A509-11CE-A5B0-00AA006BBF16}
# 	1:26:CG_IDR_POPUP_GO_TOOLS_VIEW:103
# End Section
################################################################################
################################################################################
# Section GoTools : {42EDBD0C-33A9-11CF-BBF3-9AE7711E215E}
# 	2:10:CMainFrame:Palette support added
# End Section
################################################################################
################################################################################
# Section GoTools : {42EDBD10-33A9-11CF-BBF3-9AE7711E215E}
# 	0:8:Splash.h:C:\Msdev\Projects\GoTools\Splash.h
# 	0:10:Splash.cpp:C:\Msdev\Projects\GoTools\Splash.cpp
# 	1:10:IDB_SPLASH:102
# 	2:10:ResHdrName:resource.h
# 	2:11:ProjHdrName:stdafx.h
# 	2:10:WrapperDef:_SPLASH_SCRN_
# 	2:12:SplClassName:CSplashWnd
# 	2:21:SplashScreenInsertKey:4.0
# 	2:10:HeaderName:Splash.h
# 	2:10:ImplemName:Splash.cpp
# 	2:7:BmpID16:IDB_SPLASH
# End Section
################################################################################
