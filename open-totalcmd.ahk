#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#F1::
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


#F2::Run, chrome, https://mail.google.com/mail/u/0/#inbox
return

#F3::  ; Hotkey: Ctrl+Alt+Q
    if WinExist("ahk_exe devenv.exe")
    {
        WinActivate
        Sleep, 100
        Send, {F5}
    }
    else
    {
        MsgBox, Visual Studio is not running.
    }
return


