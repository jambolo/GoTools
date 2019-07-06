@echo off
REM -- First make map file from Microsoft Visual C++ generated resource.h
echo // MAKEHELP.BAT generated Help Map file.  Used by GOTOOLS.HPJ. >"hlp\GoTools.hm"
echo. >>"hlp\GoTools.hm"
echo // Commands (ID_* and IDM_*) >>"hlp\GoTools.hm"
makehm ID_,HID_,0x10000 IDM_,HIDM_,0x10000 resource.h >>"hlp\GoTools.hm"
echo. >>"hlp\GoTools.hm"
echo // Prompts (IDP_*) >>"hlp\GoTools.hm"
makehm IDP_,HIDP_,0x30000 resource.h >>"hlp\GoTools.hm"
echo. >>"hlp\GoTools.hm"
echo // Resources (IDR_*) >>"hlp\GoTools.hm"
makehm IDR_,HIDR_,0x20000 resource.h >>"hlp\GoTools.hm"
echo. >>"hlp\GoTools.hm"
echo // Dialogs (IDD_*) >>"hlp\GoTools.hm"
makehm IDD_,HIDD_,0x20000 resource.h >>"hlp\GoTools.hm"
echo. >>"hlp\GoTools.hm"
echo // Frame Controls (IDW_*) >>"hlp\GoTools.hm"
makehm IDW_,HIDW_,0x50000 resource.h >>"hlp\GoTools.hm"
REM -- Make help for Project GOTOOLS


echo Building Win32 Help files
start /wait hcrtf -x "hlp\GoTools.hpj"
echo.
if exist Debug\nul copy "hlp\GoTools.hlp" Debug
if exist Debug\nul copy "hlp\GoTools.cnt" Debug
if exist Release\nul copy "hlp\GoTools.hlp" Release
if exist Release\nul copy "hlp\GoTools.cnt" Release
echo.


