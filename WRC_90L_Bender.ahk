#Include %A_ScriptDir%\STARTUP - Bender.ahk 

	wrc := WRC[2]

	; best quarter & backfill
	Sleep, 100
	Click, 682, 717 Left, , Down
	Sleep, 100
	Click, 682, 717 Left, , Up

		; sharpen
	Sleep, 100
	Click, 901, 712 Left, , Down
	Sleep, 100
	Click, 901, 712 Left, , Up
	Sleep, 100
	Click, 1020, 711 Left, , Down
	Sleep, 100
	Click, 1020, 711 Left, , Up
	Sleep, 100
	Click, 1020, 711 Left, , Down
	Sleep, 100
	Click, 1020, 711 Left, , Up
	Sleep, 100
	Send, {Numpad3}{Numpad0}

Loop, %RenderSet% {
	Sleep, 100
	texture := TextDefs[A_Index]
	; texture := TrackDefs[A_Index]
	Sleep, 100
	OpenAndSelectFile(texture)
	; OpenFileDialogue()
	; Sleep, 100
	; SelectFile(texture)

	; set box size
	Sleep, 100
	Click, 49, 365 Left, , Down
	Sleep, 100
	Click, 49, 365 Left, , Up
	Sleep, 100
	Click, 207, 389 Left, , Down
	Sleep, 100
	Click, 207, 389 Left, , Up
	Sleep, 100
	Click, 207, 389 Left, , Down
	Sleep, 100
	Click, 207, 389 Left, , Up
	Sleep, 100
	Click, 207, 389 Left, , Down
	Sleep, 100
	Click, 207, 389 Left, , Up
	Sleep, 100
	Click, 207, 389 Left, , Down
	Sleep, 100
	Click, 207, 389 Left, , Up
	Sleep, 100
	Click, 207, 389 Left, , Down
	Sleep, 100
	Click, 207, 389 Left, , Up
	Sleep, 100
	Click, 207, 389 Left, , Down
	Sleep, 100
	Click, 207, 389 Left, , Up
	Sleep, 100
	
	Sleep, 100
	Click, 1157, 723 Left, , Down
	Sleep, 100
	Click, 1157, 723 Left, , Up
	Sleep, 100
	Click, 393, 280 Left, , Down
	Sleep, 100
	Click, 393, 280 Left, , Up
	Sleep, 100
	Send, %wrc%%texture%.png
	Sleep, 100
	Send, {Tab}{Down}{Down}{Enter}
	Sleep, 100
	Send, {Enter}
	WinActivate, Confirm Save As ahk_class #32770
	Send, {Tab}{Enter}	
	Sleep, 100
}
WinClose, Bender