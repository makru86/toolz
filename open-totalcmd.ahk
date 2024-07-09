﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^!t:: ; This defines the hotkey (Ctrl+Alt+T)
if WinExist("ahk_exe totalcmd.exe")
{
    ; If Total Commander is already running, activate it
    WinActivate
}
else
{
    ; If not, run Total Commander
    Run, "C:\Program Files\totalcmd\TOTALCMD.EXE"
}
return