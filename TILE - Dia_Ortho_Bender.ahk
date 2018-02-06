#Include %A_ScriptDir%\STARTUP - Bender.ahk 


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
	Sleep, 100
	OpenAndSelectFile(texture)

	Sleep, 100
	Click, 66, 366 Left, , Down
	Sleep, 100
	Click, 66, 366 Left, , Up
	Sleep, 100
	Click, 205, 392 Left, , Down
	Sleep, 100
	Click, 205, 392 Left, , Up
	Sleep, 100
	Click, 181, 422 Left, , Down
	Sleep, 100
	Click, 181, 422 Left, , Up
	Sleep, 100
	Click, 181, 422 Left, , Down
	Sleep, 100
	Click, 181, 422 Left, , Up
	Sleep, 100
	Send, {Numpad4}
	Sleep, 100
	Send, {Numpad5}
	Sleep, 100
	Send, {Tab}
	Sleep, 100
	Click, 1152, 723 Left, , Down
	Sleep, 100
	Click, 1152, 723 Left, , Up
	Sleep, 100
	Click, 495, 292 Left, , Down
	Sleep, 100
	Click, 495, 292 Left, , Up
	Sleep, 100

	Send, %texture%_DiaOrtho.png
	Sleep, 100
	Send, {Tab}{Down}{Down}{Enter}
	Sleep, 100
	Send, {Enter}
	WinActivate, Confirm Save As ahk_class #32770
	Send, {Tab}{Enter}	
	Sleep, 100

}