#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ^!e:: 
; if WinExist("ahk_exe Everything.exe") WinActivate
; else Run, "C:\Program Files\c:\Everything\Everything.exe" -startup
; return