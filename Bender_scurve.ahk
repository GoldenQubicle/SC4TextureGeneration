#Include %A_ScriptDir%\Bender_startup.ahk 

wrc := WRC[3]



; settings
Sleep, 100
Click, 432, 712 Left, , Down
Sleep, 100
Click, 432, 712 Left, , Up
Sleep, 100
Click, 432, 712 Left, , Down
Sleep, 100
Click, 432, 712 Left, , Up
Sleep, 100
Click, 472, 717 Left, , Down
Sleep, 100
Click, 472, 717 Left, , Up
Sleep, 100

Loop,%RenderSet% {
	Sleep, 100
	texture := TextDefs[A_Index]
	Sleep, 100
	OpenAndSelectFile(texture)

	Sleep, 100
	Click, 361, 16 Left, , Down
	Sleep, 100
	Click, 361, 16 Left, , Up
	Sleep, 100
	Click, 58, 479 Left, , Down
	Sleep, 100
	Click, 58, 478 Left, , Up
	Sleep, 100
	Click, 204, 496 Left, , Down
	Sleep, 100
	Click, 204, 496 Left, , Up
	Sleep, 100
	Click, 204, 496 Left, , Down
	Sleep, 100
	Click, 204, 496 Left, , Up
	Sleep, 100
	Click, 204, 496 Left, , Down
	Sleep, 100
	Click, 204, 496 Left, , Up
	Sleep, 100
	Click, 201, 523 Left, , Down
	Sleep, 100
	Click, 201, 523 Left, , Up
	Sleep, 100
	Click, 1149, 707 Left, , Down
	Sleep, 100
	Click, 1149, 706 Left, , Up
	Sleep, 100
	Click, 919, 462 Left, , Down
	Sleep, 100
	Click, 919, 462 Left, , Up
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