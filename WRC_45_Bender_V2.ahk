#Include %A_ScriptDir%\STARTUP - Bender.ahk 

wrc := WRC[4]

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

Loop,%RenderSet% {
	Sleep, 100
	texture := TextDefs[A_Index]
	; texture := TrackDefs[A_Index]
	Sleep, 100
	OpenAndSelectFile(texture)

	Sleep, 100
	Click, 60, 364 Left, , Down
	Sleep, 100
	Click, 60, 364 Left, , Up
	Sleep, 100
	Click, 204, 394 Left, , Down
	Sleep, 100
	Click, 204, 394 Left, , Up
	Sleep, 100
	Click, 204, 394 Left, , Down
	Sleep, 100
	Click, 204, 394 Left, , Up
	Sleep, 100
	Click, 204, 394 Left, , Down
	Sleep, 100
	Click, 204, 394 Left, , Up
	Sleep, 100
	Click, 204, 394 Left, , Down
	Sleep, 100
	Click, 204, 394 Left, , Up
	Sleep, 100
	Click, 204, 394 Left, , Down
	Sleep, 100
	Click, 204, 394 Left, , Up
	Sleep, 100
	Send, {Tab}{LShift Down}{End}{LShift Up}{Numpad4}{Numpad5}
	Click, 681, 722 Left, , Down
	Sleep, 100
	Click, 681, 722 Left, , Up
	Sleep, 100

	Click, 1138, 718 Left, , Down
	Sleep, 100
	Click, 1138, 718 Left, , Up
	Sleep, 100
	Click, 876, 352 Left, , Down
	Sleep, 100
	Click, 876, 352 Left, , Up
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