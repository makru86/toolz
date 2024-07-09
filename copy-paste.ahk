#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


^!c:: ; Assign the hotkey Ctrl+Shift+C to the following actions
{
    Send, ^c ; Copy the selected text (Ctrl+C)
    Sleep, 100 ; Wait for 100 milliseconds to ensure the text is copied
    Send, !{Tab} ; Alt+Tab to switch to the next window
    Sleep, 100 ; Wait for 100 milliseconds to ensure the window switch
    Send, ^v ; Paste the copied text (Ctrl+V)
    Sleep, 100 ; Wait for 100 milliseconds to ensure the window switch
    Send, !{Tab}
}
return