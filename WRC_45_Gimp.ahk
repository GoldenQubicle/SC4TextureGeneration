#Include %A_ScriptDir%\STARTUP - Gimp.ahk 

wrc := WRC[4]

Loop,%RenderSet% {
	texture := TextDefs[A_Index]
	curve = %wrc%%texture%
	Sleep, 100
	SelectFile(curve)
	Sleep, 1000
	Click
	Sleep, 250
	resizeCanvas()
	Sleep, 250
	GuideNSlice()
	Sleep, 250
	closeFile()
	Sleep, 100

	Loop, 2 {
		Sleep, 100
		Send, {LAlt Down}{i}{LAlt Up}{t}{c}
		Sleep, 100
		Send, {LAlt Down}{i}{LAlt Up}{t}{h}
		Sleep, 100

		textureIID := 45Curve[A_Index]
		Clipboard := WealthDefs[texture]
		iid := Wealth(textureIID)	
		Sleep, 100
		ExportTile(iid)		
		Sleep, 100
	}

	Loop 2 {
		closeFile()
		Sleep, 100
	}

	Loop, 3 {
		index := 2+A_Index
		Sleep, 100
		Send, {LAlt Down}{i}{LAlt Up}{t}{c}
		Sleep, 100
		Send, {LAlt Down}{i}{LAlt Up}{t}{h}
		Sleep, 100

		textureIID := 45Curve[index]
		Clipboard := WealthDefs[texture]
		iid := Wealth(textureIID)	
		Sleep, 100
		ExportTile(iid)		
		Sleep, 100
	}

}

GuideNSlice(){
	Sleep, 100
	Send, {LAlt Down}{i}{LAlt Up}{g}{Enter}
	Sleep, 100
	WinActivate, Script-Fu: New Guide (by Percent) ahk_class gdkWindowToplevel
	Sleep, 100
	Send, {Up}{Tab}
	Sleep, 100
	Send, {Numpad5}{Numpad0}{Enter}
	Sleep, 100

	Sleep, 100
	Send, {LAlt Down}{i}{LAlt Up}{g}{Enter}
	Sleep, 100
	WinActivate, Script-Fu: New Guide (by Percent) ahk_class gdkWindowToplevel
	Sleep, 100
	Send, {Down}{Tab}
	Sleep, 100
	Send, {Numpad2}{Numpad5}{Enter}
	Sleep, 100

	Sleep, 100
	Send, {LAlt Down}{i}{LAlt Up}{g}{Enter}
	Sleep, 100
	WinActivate, Script-Fu: New Guide (by Percent) ahk_class gdkWindowToplevel
	Sleep, 100
	Send, {Down}{Tab}
	Sleep, 100
	Send, {Numpad5}{Numpad0}{Enter}
	Sleep, 100

	Sleep, 100
	Send, {LAlt Down}{i}{LAlt Up}{g}{Enter}
	Sleep, 100
	WinActivate, Script-Fu: New Guide (by Percent) ahk_class gdkWindowToplevel
	Sleep, 100
	Send, {Down}{Tab}
	Sleep, 100
	Send, {Numpad7}{Numpad5}{Enter}
	Sleep, 100
	Send, {LAlt Down}{i}{LAlt Up}{t}{g}
	Sleep, 100
}


resizeCanvas() {
	Sleep, 100
	Send, {LAlt Down}{i}{LAlt Up}{v}
	WinActivate
	Sleep, 100
	Send, {Tab}
	Sleep, 100
	Send, {Tab}
	Sleep, 100
	Send, {Numpad5}
	Sleep, 100
	Send, {Numpad1}
	Sleep, 100
	Send, {Numpad2}
	Sleep, 100
	Send, {LAlt Down}{r}{LAlt Up}
	Sleep, 100
	Send, {Right}
	Sleep, 100
	Send, {Enter}
	Sleep, 100
}