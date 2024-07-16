; Plays music note on keypress of A to Z keys

; Define the notes
Do4 := 261.63
Re4 := 293.66
Mi4 := 329.63
Fa4 := 349.23
Sol4 := 392.00
La4 := 440.00
Si4 := 493.88
Do5 := 523.25
Re5 := 587.33
Mi5 := 659.25
Fa5 := 698.46
Sol5 := 783.99
La5 := 880.00
Si5 := 987.77
Do6 := 1046.50

; QWERTY line: Do4 Re4 Mi4 Fa4 Sol4 La4 Si4 Do4
; ASDFGH line: Do4 Re4 Mi4 Fa4 Sol4 La4 Si4 Do5

; Define the keys
keys := "QWERTYUIOPASDFGHJKLZXCVBNM"

#p::SoundBeep, La4, 100 ; Play a beep sound to indicate the script is running

#i::SoundBeep, C4, 100 ; Play a beep sound to indicate the script is running
return

; Loop, Parse, keys
; {
;     key := A_LoopField
;     hotkey, %key%, playNote
; }
; return

