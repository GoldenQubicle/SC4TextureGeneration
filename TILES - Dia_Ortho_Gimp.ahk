#Include %A_ScriptDir%\STARTUP - Gimp.ahk 

wrc := WRC[1] ;using the small 90 wrc curve as template

Loop, %RenderSet% {

	texture := TextDefs[A_Index]
	curve = %wrc%%texture%
	file = %texture%.png
	Sleep, 100
	SelectFile(file)
	Sleep, 1000
	Click


	Send, {LAlt Down}{i}{LAlt Up}{t}{c}
	WinActivate
	Sleep, 100
	Send, {LAlt Down}{i}{LAlt Up}{v}
	WinActivate
	Sleep, 100
	Send, {Numpad5}{Numpad1}{Numpad2}{LAlt Down}{r}{LAlt Up}{Right}{Enter}
	WinActivate
	Sleep, 100
	Send, {LAlt Down}{l}{LAlt Up}{t}{o}
	WinActivate
	Sleep, 100
	Send, {NumpadSub}{Numpad1}{Numpad4}{Numpad4}
	Sleep, 100
	Send, {Tab}{Tab}{Tab}{Tab}{Down}{Down}{Tab}{Tab}{Enter}
	WinActivate
	Sleep, 100
	Send, {LControl Down}{o}
	WinActivate
	Sleep, 250
	Send, {LControl Up}{LShift Down}{End}{LShift Up}{Delete}
	Sleep, 250
	Send, %curve%
	Sleep, 100
	Send, {Enter}	
	Sleep, 1000
	Click
	Sleep, 100
	WinActivate
	Send, {LControl Down}{a}
	Sleep, 333
	Send, {LControl Up}{LControl Down}{LShift Down}{c}{LShift Up}
	Sleep, 100
	Send, {LControl Up}{LControl Down}{w}
	WinActivate
	Sleep, 333
	Send, {LControl Up}{LAlt Down}{d}
	WinActivate
	Sleep, 333
	Send, {LAlt Up}{LControl Down}
	Sleep, 100
	Send, {LControl Up}{LAlt Down}{l}{LAlt Up}{Enter}
	WinActivate, New Layer ahk_class gdkWindowToplevel
	Sleep, 333
	Send, {Enter}
	WinActivate
	Sleep, 333
	Send, {LControl Down}{v}
	WinActivate
	Sleep, 333
	Send, {LControl Up}{LAlt Down}{l}{LAlt Up}{t}{o}
	WinActivate, Offset ahk_class gdkWindowToplevel
	Sleep, 333
	Send, {Numpad1}{Numpad1}{Numpad2}{Tab}
	Sleep, 100
	Send, {Numpad1}{Numpad2}{Numpad8}{Tab}{Tab}{Tab}{Down}{Down}{Tab}{Tab}{Enter}
	Sleep, 100
	Send, {LControl Down}{LShift Down}{n}{LControl Up}{LShift Up}
	Sleep, 100
	Send, {LAlt Down}{i}{LAlt Up}{g}{Enter}
	Sleep, 100
	WinActivate
	Sleep, 100
	Send, {Down}{Tab}{Enter}
	WinActivate
	Sleep, 100
	Send, {LAlt Down}{i}{LAlt Up}{t}{g}
	Sleep, 100

	Send, {LAlt Down}{i}{LAlt Up}{t}{w}
	Sleep, 100
	TextureIID := DiaOrtho[1]
	Clipboard := WealthDefs[texture]
	iid := Wealth(textureIID)
	Sleep, 100
	ExportTile(iid)

	Sleep, 100
	Send, {LAlt Down}{i}{LAlt Up}{t}{c}{LAlt Down}{i}{LAlt Up}{t}{h}
	Sleep, 100
	TextureIID := DiaOrtho[2]
	Clipboard := WealthDefs[texture]
	iid := Wealth(textureIID)
	Sleep, 100
	ExportTile(iid)

}
