#Include %A_ScriptDir%\STARTUP - Gimp.ahk 


Loop, %RenderSet% {

	texture := TextDefs[A_Index]
	file = %texture%_DiaOrtho.png
	SelectFile(file)
	Sleep, 1000

	Send, {LAlt Down}{l}{LAlt Up}{Up}{Enter}
	Sleep, 100
	WinActivate
	Sleep, 100
	Send, {Numpad8}{Numpad8}
	Sleep, 100	
	Send, {LAlt Down}{o}{LAlt Up}
	Sleep, 100
	WinActivate
	Sleep, 100
	Send, {LAlt Down}{i}{LAlt Up}{v}
	Sleep, 100
	WinActivate
	Sleep, 100
	Send, {Numpad2}{Numpad5}{Numpad6}
	Sleep, 100
	Send, {Tab}
	Sleep, 100
	Send, {Tab}
	Sleep, 100
	Send, {Numpad2}{Numpad5}{Numpad6}
	Sleep, 100
	Send, {Tab}
	Sleep, 100
	Send, {LAlt Down}{r}{LAlt Up}{Right}{Enter}
	Sleep, 100
	WinActivate
	Sleep, 100
	Send, {LAlt Down}{l}{LAlt Up}{i}
	Sleep, 100
	Send, {LAlt Down}{l}{LAlt Up}
	Sleep, 100
	Loop, 5{
		Send, {Up}
		Sleep, 100
	}
	Send, {Enter}
	WinActivate
	Sleep, 100
	Send, {Numpad1}{Numpad2}{Numpad8}
	Sleep, 100
	Send, {Tab}
	Sleep, 100
	Send, {Tab}
	Sleep, 100
	Send, {Tab}
	Sleep, 100
	Send, {Tab}
	Sleep, 100
	Send, {NumpadSub}{Numpad1}{Numpad2}{Numpad8}
	Sleep, 100
	Send, {LAlt Down}{r}{LAlt Up}{Right}{Enter}
	Sleep, 100
	WinActivate
	Sleep, 100
	Send, {LAlt Down}{l}{LAlt Up}{i}
	Sleep, 100
	Send, {LControl Down}{a}{LControl Up}
	Sleep, 100
	Send, {LControl Down}{LShift Down}{c}{LShift Up}{LControl Up}
	Sleep, 100
	Send, {LAlt Down}{e}{LAlt Up}{a}{l}
	WinActivate
	Sleep, 100
	Send, {LAlt Down}{l}{LAlt Up}{t}{h}
	Sleep, 100
	Send, {LAlt Down}{i}{LAlt Up}{t}{c}
	Sleep, 100

	textureIID := DiaBend[1]
	Clipboard := WealthDefs[texture]
	iid := Wealth(textureIID)	
	Sleep, 100
	ExportTile(iid)		
	Sleep, 500

}