#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^!q:: ; This defines the hotkey (Ctrl+Alt+T)
IfWinExist, "ahk_class .*Visual.Studio.*"
{
    WinActivate ; Use the window found by IfWinExist.
    WinMaximize ; Same as above.
    Send, Some text.{Enter}
    return
}
else
    MsgBox, The window does not exist.