;curl -O https://raw.githubusercontent.com/ZERODETECTION/LAB_SETUP_CONF/main/install_bitdefender.ahk; install_bitdefender.ahk
#NoEnv
#Warn  ; Enable warnings to assist with detecting common errors.
#NoTrayIcon
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetControlDelay -1

;Run, cmd.exe /c curl -O https://download.bitdefender.com/windows/installer/de-de/bitdefender_avfree.exe
RunWait, cmd.exe /c curl -O https://download.bitdefender.com/windows/installer/de-de/bitdefender_avfree.exe

Run, cmd.exe /c bitdefender_avfree.exe

Sleep, 5000

;WinWait, ahk_exe Stub.exe,, 10 ;
WinActivate, ahk_exe ProductAgentUI.exe

;long wait up to 5min

WinWait, ahk_exe Installer.exe
WinActivate, ahk_exe Installer.exe

;3x tab, space, 2x tab, space,  5x tab, space

; 3x Tab
Send, {Tab 3}
; Space
Send, {Space}

; 2x Tab
Send, {Tab 2}
; Space
Send, {Space}

; 5x Tab
Send, {Tab 5}
; Space
Send, {Space}




;PostMessage, 0x201, 0, 0, Button3, ahk_exe Stub.exe ; WM_LBUTTONDOWN
;PostMessage, 0x202, 0, 0, Button3, ahk_exe Stub.exe ; WM_LBUTTONUP



;ControlGet, ControlList, List,, Button,, ahk_exe Stub.exe
;MsgBox, %ControlList%
;ControlClick, Button2,, ahk_exe Stub.exe


