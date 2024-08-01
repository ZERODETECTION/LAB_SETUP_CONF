#NoEnv
#Warn  ; Enable warnings to assist with detecting common errors.
#NoTrayIcon
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetControlDelay -1

;Run, cmd.exe /c curl -O http://acs.pandasoftware.com/Panda/FREEAV/190612/PANDAFREEAV.exe
RunWait, cmd.exe /c curl -O http://acs.pandasoftware.com/Panda/FREEAV/190612/PANDAFREEAV.exe

Run, cmd.exe /c PANDAFREEAV.exe

WinWait, ahk_exe Stub.exe,, 10 ;
WinActivate, ahk_exe Stub.exe
ControlGet, ControlList, List,, Button,, ahk_exe Stub.exe

;MsgBox, %ControlList%
;ControlClick, Button2,, ahk_exe Stub.exe

PostMessage, 0x201, 0, 0, Button2, ahk_exe Stub.exe ; WM_LBUTTONDOWN
PostMessage, 0x202, 0, 0, Button2, ahk_exe Stub.exe ; WM_LBUTTONUP

Sleep, 1000

PostMessage, 0x201, 0, 0, Static4, ahk_exe Stub.exe ; WM_LBUTTONDOWN
PostMessage, 0x202, 0, 0, Static4, ahk_exe Stub.exe ; WM_LBUTTONUP
