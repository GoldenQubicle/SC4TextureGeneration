#Include %A_ScriptDir%\Bender_startup.ahk 

wrc := WRC[3]


Loop,%RenderSet% {
	Sleep, 100
	texture := TextDefs[A_Index]
	Sleep, 100
	OpenAndSelectFile(texture)

	Click, 62, 480 Left, , Down
	Sleep, 100
	Click, 62, 480 Left, , Up
	Sleep, 100
	Click, 205, 498 Left, , Down
	Sleep, 100
	Click, 205, 498 Left, , Up
	Sleep, 100
	Click, 205, 498 Left, , Down
	Sleep, 100
	Click, 205, 498 Left, , Up
	Sleep, 100
	Click, 205, 498 Left, , Down
	Sleep, 100
	Click, 205, 498 Left, , Up
	Sleep, 100
	Click, 205, 524 Left, , Down
	Sleep, 100
	Click, 205, 524 Left, , Up
	Sleep, 100
	Click, 467, 715 Left, , Down
	Sleep, 100
	Click, 467, 716 Left, , Up
	Sleep, 100
	Click, 435, 708 Left, , Down
	Sleep, 100
	Click, 435, 708 Left, , Up
	Sleep, 100
	Click, 435, 708 Left, , Down
	Sleep, 100
	Click, 435, 708 Left, , Up
	Sleep, 100

	Click, 1160, 710 Left, , Down
	Sleep, 100
	Click, 1160, 710 Left, , Up
	Sleep, 100
	Click, 715, 382 Left, , Down
	Sleep, 100
	Click, 715, 382 Left, , Up
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