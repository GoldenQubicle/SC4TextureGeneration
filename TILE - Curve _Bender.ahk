#Include %A_ScriptDir%\STARTUP - Bender.ahk 

Loop, %RenderSet% {
	Sleep, 100
	texture := TextDefs[A_Index]
	Sleep, 100
	OpenAndSelectFile(texture)


	Sleep, 100
	Click, 1151, 719 Left, , Down
	Sleep, 100
	Click, 1151, 719 Left, , Up
	Sleep, 100
	Click, 473, 252 Left, , Down
	Sleep, 100
	Click, 473, 252 Left, , Up
	Sleep, 100



	; textureIID := Curve[1]
	; Clipboard := WealthDefs[texture]
	; iid_start := SubStr(textureIID, 1, 8)
	; iid_end := SubStr(textureIID, 10)
	; result = %iid_start%%Clipboard%%iid_end%.png

	result = %texture%_CURVE.png

	Send, %result%
	Sleep, 100
	Send, {Tab}{Down}{Down}{Enter}
	Sleep, 100
	Send, {Enter}
	WinActivate, Confirm Save As ahk_class #32770
	Send, {Tab}{Enter}	
	Sleep, 100
}