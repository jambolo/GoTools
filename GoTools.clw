; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=BrowseDialog
LastTemplate=CDialog
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "GoTools.h"
LastPage=0

ClassCount=7
Class1=CGoToolsApp
Class2=CGoToolsDoc
Class3=CGoToolsView
Class4=CMainFrame

ResourceCount=4
Resource1=IDD_ABOUTBOX
Resource2=IDR_MAINFRAME
Class5=CAboutDlg
Class6=CSplashWnd
Resource3=CG_IDR_POPUP_GO_TOOLS_VIEW
Class7=BrowseDialog
Resource4=IDD_BROWSE

[CLS:CGoToolsApp]
Type=0
HeaderFile=GoTools.h
ImplementationFile=GoTools.cpp
Filter=N
LastObject=CGoToolsApp

[CLS:CGoToolsDoc]
Type=0
HeaderFile=GoToolsDoc.h
ImplementationFile=GoToolsDoc.cpp
Filter=N
LastObject=CGoToolsDoc
BaseClass=CDocument
VirtualFilter=DC

[CLS:CGoToolsView]
Type=0
HeaderFile=GoToolsView.h
ImplementationFile=GoToolsView.cpp
Filter=C
LastObject=CGoToolsView
BaseClass=CView
VirtualFilter=VWC

[CLS:CMainFrame]
Type=0
HeaderFile=MainFrm.h
ImplementationFile=MainFrm.cpp
Filter=T
LastObject=CMainFrame



[CLS:CAboutDlg]
Type=0
HeaderFile=GoTools.cpp
ImplementationFile=GoTools.cpp
Filter=D
LastObject=CAboutDlg

[DLG:IDD_ABOUTBOX]
Type=1
Class=CAboutDlg
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308480
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889

[MNU:IDR_MAINFRAME]
Type=1
Class=CMainFrame
Command1=ID_FILE_NEW
Command2=ID_FILE_OPEN
Command3=ID_FILE_SAVE
Command4=ID_FILE_SAVE_AS
Command5=ID_FILE_PRINT
Command6=ID_FILE_PRINT_PREVIEW
Command7=ID_FILE_PRINT_SETUP
Command8=ID_FILE_MRU_FILE1
Command9=ID_APP_EXIT
Command10=ID_EDIT_UNDO
Command11=ID_EDIT_CUT
Command12=ID_EDIT_COPY
Command13=ID_EDIT_PASTE
Command14=ID_VIEW_TOOLBAR
Command15=ID_VIEW_STATUS_BAR
Command16=ID_HELP_FINDER
Command17=ID_APP_ABOUT
CommandCount=17

[ACL:IDR_MAINFRAME]
Type=1
Class=CMainFrame
Command1=ID_FILE_NEW
Command2=ID_FILE_OPEN
Command3=ID_FILE_SAVE
Command4=ID_FILE_PRINT
Command5=ID_EDIT_UNDO
Command6=ID_EDIT_CUT
Command7=ID_EDIT_COPY
Command8=ID_EDIT_PASTE
Command9=ID_EDIT_UNDO
Command10=ID_EDIT_CUT
Command11=ID_EDIT_COPY
Command12=ID_EDIT_PASTE
Command13=ID_NEXT_PANE
Command14=ID_PREV_PANE
Command15=ID_CONTEXT_HELP
Command16=ID_HELP
CommandCount=16

[TB:IDR_MAINFRAME]
Type=1
Command1=ID_FILE_NEW
Command2=ID_FILE_OPEN
Command3=ID_FILE_SAVE
Command4=ID_EDIT_CUT
Command5=ID_EDIT_COPY
Command6=ID_EDIT_PASTE
Command7=ID_FILE_PRINT
Command8=ID_APP_ABOUT
Command9=ID_CONTEXT_HELP
CommandCount=9

[CLS:CSplashWnd]
Type=0
HeaderFile=Splash.h
ImplementationFile=Splash.cpp
BaseClass=CWnd
LastObject=IDC_EDIT_ADD_VARIATION

[MNU:CG_IDR_POPUP_GO_TOOLS_VIEW]
Type=1
Command1=ID_EDIT_CUT
Command2=ID_EDIT_COPY
Command3=ID_EDIT_PASTE
CommandCount=3

[DLG:IDD_BROWSE]
Type=1
Class=BrowseDialog
ControlCount=12
Control1=IDC_EDIT_ADD_VARIATION,button,1342193728
Control2=IDC_EDIT_REMOVE_VARIATION,button,1342193728
Control3=IDC_EDIT_NEXT,button,1342193728
Control4=IDC_EDIT_PREVIOUS,button,1342193728
Control5=IDC_EDIT_NEXT_VARIATION,button,1342193728
Control6=IDC_EDIT_PREVIOUS_VARIATION,button,1342193728
Control7=IDC_EDIT_NEXT_SIBLING,button,1342193728
Control8=IDC_EDIT_PREVIOUS_SIBLING,button,1342193728
Control9=IDC_EDIT_NEXT_COMMENT,button,1342193728
Control10=IDC_EDIT_PREVIOUS_COMMENT,button,1342193728
Control11=IDC_EDIT_BEGINNING,button,1342193728
Control12=IDC_EDIT_END,button,1342193728

[CLS:BrowseDialog]
Type=0
HeaderFile=BrowseDialog.h
ImplementationFile=BrowseDialog.cpp
BaseClass=CDialog
Filter=D
LastObject=IDC_EDIT_REMOVE_VARIATION
VirtualFilter=dWC

