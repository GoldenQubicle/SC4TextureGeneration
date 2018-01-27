#Include %A_ScriptDir%\Gimp_startup.ahk 
#Include %A_ScriptDir%\Gimp_selectFile.ahk 

wrc := WRC[1]

Loop, 1{
	texture := TextDefs[A_Index]
	curve = %wrc%%texture%
	Sleep, 100
	SelectFile(curve)
	Sleep, 1000
	Click
	Sleep, 100
	GuideNSlice()
	Sleep, 100

	textureIID := 90s[1]
	Sleep, 100

	ExportTile(textureIID)

	Sleep, 100
}


ExportTile(fileName){
	Sleep, 100
	Send, {LControl Down}{LShift Down}{e}
	Sleep, 100
	WinActivate, Export Image ahk_class gdkWindowToplevel
	Sleep, 100
	Send, {LControl Up}{LShift Up} ;{LControl Down}{v}{LControl Up}{Enter}
	Sleep, 100
	Send, %fileName%
	Sleep, 100
	Send, {Enter}
	Sleep, 100
	WinActivate, Export Image as PNG ahk_class gdkWindowToplevel
	Sleep, 100
	Send, {Enter}
	Sleep, 100
	WinActivate, Export Image as PNG ahk_class gdkWindowToplevel
	Sleep, 333
	Send, {LAlt Down}{e}{LAlt Up}
	Sleep, 100
	WinActivate
	Sleep, 100
	Send, {LAlt Down}{f}{LAlt Up}
	Sleep, 100
	Send, {c}
	Sleep, 100
	Send, {LControl Down}{d}{LControl Up}
	Sleep, 100
}


GuideNSlice(){

WinActivate
Sleep, 100
Send, {LAlt Down}{i}{LAlt Up}{g}{Enter}
Sleep, 100
WinActivate, Script-Fu: New Guide (by Percent) ahk_class gdkWindowToplevel
Sleep, 333
Send, {Tab}{Enter}
WinActivate
Sleep, 333
Send, {LAlt Down}{i}{LAlt Up}{g}{Enter}
WinActivate, Script-Fu: New Guide (by Percent) ahk_class gdkWindowToplevel
Sleep, 333
Send, {Down}{Tab}{Enter}
WinActivate 
Sleep, 333
Send, {LAlt Down}{i}{LAlt Up}{t}{g}
Sleep, 333
}


