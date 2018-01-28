#Include %A_ScriptDir%\Gimp_startup.ahk 

wrc := WRC[1]

Loop, %RenderSet% {
	texture := TextDefs[A_Index]
	curve = %wrc%%texture%
	Sleep, 100
	SelectFile(curve)
	Sleep, 1000
	Click
	Sleep, 100
	GuideNSlice()
	Sleep, 100

	Loop, 3{
		Sleep, 100
		textureIID := 90s[A_Index]
		Clipboard := WealthDefs[texture]
		iid := Wealth(textureIID)
		Sleep, 100
		ExportTile(iid)
		Sleep, 100
	}
	Send, {LAlt Down}{f}{LAlt Up}{c}
	WinActivate
	Sleep, 100
	Send, {LControl Down}{d}
	WinActivate
	Sleep, 100
	Send, {LControl Up}{LAlt Down}{f}{LAlt Up}{c}
	WinActivate
	Sleep, 100
	Send, {LControl Down}{d}
	WinActivate
	Sleep, 100
	Send, {LControl Up}
	Sleep, 100
}


GuideNSlice(){

WinActivate
Sleep, 100
Send, {LAlt Down}{i}{LAlt Up}{g}{Enter}
Sleep, 100
WinActivate, Script-Fu: New Guide (by Percent) ahk_class gdkWindowToplevel
Sleep, 100
Send, {Up}{Tab}{Enter}
WinActivate
Sleep, 100
Send, {LAlt Down}{i}{LAlt Up}{g}{Enter}
WinActivate, Script-Fu: New Guide (by Percent) ahk_class gdkWindowToplevel
Sleep, 100
Send, {Down}{Tab}{Enter}
WinActivate 
Sleep, 100
Send, {LAlt Down}{i}{LAlt Up}{t}{g}
Sleep, 100
}


