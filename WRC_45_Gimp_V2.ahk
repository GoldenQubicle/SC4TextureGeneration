#Include %A_ScriptDir%\STARTUP - Gimp.ahk 

wrc := WRC[4] 

Loop, %RenderSet% {

	texture := TextDefs[A_Index]
	file = %texture%.png
	curve = %wrc%%texture%
	Sleep, 100
	SelectFile(file)
	Sleep, 1000
	Click

	Sleep, 100
	Send, {LAlt Down}{i}{LAlt Up}{t}{c}
	Sleep, 100
	Send, {LAlt Down}{i}{LAlt Up}{v}
	WinActivate
	Sleep, 100
	Send, {Numpad7}{Numpad6}{Numpad8}
	Sleep, 100
	Send, {Tab}{Tab}{Numpad5}{Numpad1}{Numpad2}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}
	Sleep, 100
	Send, {Tab}{Right}{Right}
	Sleep, 100
	Send, {Enter}
	Sleep, 100

	Send, {LAlt Down}{l}{LAlt Up}{o}
	WinActivate
	Sleep, 100
	Send, {Numpad5}{Numpad2}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Right}{Right}{Enter}
	Sleep, 100

	SelectFile(curve)
	Sleep, 1000
	Click
	Sleep, 250
	Send, {LControl Down}{a}{LControl Up}
	WinActivate
	Sleep, 100
	Send, {LControl Down}{LShift Down}{c}{LControl Up}{LShift Up}{LControl Down}{w}{LControl Up}
	WinActivate
	Sleep, 100
	Send, {LAlt Down}{d}{LAlt Up}
	WinActivate
	Sleep, 100
	Send, {LAlt Down}{e}{LAlt Up}{a}{l}
	Sleep, 100

	Send, {LAlt Down}{l}{LAlt Up}{t}{o}
	WinActivate
	Sleep, 100
	Send, {Numpad5}{Numpad2}
	Sleep, 100
	Send, {LAlt Down}{o}{LAlt Up}

	GuideNSlice()

	Sleep, 1000

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
		
	closeFile()
	
	Sleep, 100

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

	Sleep, 100
}


GuideNSlice(){
	Sleep, 100
	Send, {LAlt Down}{i}{LAlt Up}{g}
	Sleep, 100
	Send, {g}
	Sleep, 100
	WinActivate
	Sleep, 100
	Send, {Up}{Tab}
	Sleep, 100
	Send, {Numpad2}{Numpad5}{Numpad6}{Enter}
	Sleep, 100

	Sleep, 100
	Send, {LAlt Down}{i}{LAlt Up}{g}{g}
	Sleep, 100
	WinActivate, Script-Fu: New Guide (by Percent) ahk_class gdkWindowToplevel
	Sleep, 100
	Send, {Down}{Tab}
	Sleep, 100
	Send, {Numpad2}{Numpad5}{Numpad6}{Enter}
	Sleep, 100

	Sleep, 100
	Send, {LAlt Down}{i}{LAlt Up}{g}{g}
	Sleep, 100
	WinActivate, Script-Fu: New Guide (by Percent) ahk_class gdkWindowToplevel
	Sleep, 100
	Send, {Down}{Tab}
	Sleep, 100
	Send, {Numpad5}{Numpad1}{Numpad2}{Enter}
	Sleep, 100

	Send, {LAlt Down}{i}{LAlt Up}{t}{g}
	Sleep, 100
}
