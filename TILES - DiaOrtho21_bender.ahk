#Include %A_ScriptDir%\STARTUP - Bender.ahk 

Loop,%RenderSet% {
	Sleep, 100
	texture := TextDefs[A_Index]
	Sleep, 100
	OpenAndSelectFile(texture)
	
	Sleep, 100
	Click, 527, 19 Left, , Down
	Sleep, 100
	Click, 527, 19 Left, , Up
	Sleep, 100
	Click, 83, 368 Left, , Down
	Sleep, 100
	Click, 83, 368 Left, , Up
	Sleep, 100
	Click, 205, 391 Left, , Down
	Sleep, 100
	Click, 205, 391 Left, , Up
	Sleep, 100
	Click, 205, 391 Left, , Down
	Sleep, 100
	Click, 205, 391 Left, , Up
	Sleep, 100
	Send, {Tab}{LShift Down}{End}{LShift Up}{Numpad4}{Numpad5}
	Click, 1160, 717 Left, , Down
	Sleep, 100
	Click, 1160, 717 Left, , Up
	Sleep, 100
	Click, 602, 344 Left, , Down
	Sleep, 100
	Click, 602, 344 Left, , Up
	Sleep, 100

	Send, DiaOrtho_%texture%.png
	Sleep, 100
	Send, {Tab}{Down}{Down}{Enter}
	Sleep, 100
	Send, {Enter}
	WinActivate, Confirm Save As ahk_class #32770
	Send, {Tab}{Enter}	
	Sleep, 100

}