#Include %A_ScriptDir%\Bender_startup.ahk 

wrc := WRC[4]


Loop,%RenderSet% {
	Sleep, 100
	texture := TextDefs[A_Index]
	Sleep, 100
	OpenAndSelectFile(texture)


	Click, 70, 373 Left, , Down
	Sleep, 100
	Click, 70, 373 Left, , Up
	Sleep, 100
	Click, 204, 391 Left, , Down
	Sleep, 100
	Click, 204, 391 Left, , Up
	Sleep, 100
	Click, 204, 391 Left, , Down
	Sleep, 100
	Click, 204, 391 Left, , Up
	Sleep, 100
	Click, 204, 391 Left, , Down
	Sleep, 100
	Click, 204, 391 Left, , Up
	Sleep, 100
	Click, 204, 391 Left, , Down
	Sleep, 100
	Click, 204, 391 Left, , Up
	Sleep, 100
	Click, 204, 391 Left, , Down
	Sleep, 100
	Click, 204, 391 Left, , Up
	Sleep, 100
	Click, 204, 391 Left, , Down
	Sleep, 100
	Click, 204, 391 Left, , Up
	Sleep, 100
	; Send, {Tab}{Delete}{Delete}{Numpad4}{Numpad5}
	Send, {Tab}{LShift Down}{End}{LShift Up}{Delete}{Numpad4}{Numpad5}{Tab}
	Click, 1162, 717 Left, , Down
	Sleep, 100
	Click, 1162, 717 Left, , Up
	Sleep, 100
	Click, 918, 505 Left, , Down
	Sleep, 100
	Click, 918, 505 Left, , Up
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