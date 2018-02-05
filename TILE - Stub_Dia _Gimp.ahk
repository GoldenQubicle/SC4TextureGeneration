#Include %A_ScriptDir%\STARTUP - Gimp.ahk 


Loop,%RenderSet% {
	texture := TextDefs[A_Index]
	file = %texture%_Stub.png
	SelectFile(file)
	Sleep, 1000

	Send, {LAlt Down}{l}{LAlt Up}{t}{a}
	WinActivate
	Sleep, 100
	Send, {Numpad4}{Numpad5}{Tab}
	Sleep, 100
	Send, {Tab}{Numpad4}{Numpad4}{Tab}
	Sleep, 100
	Send, {Numpad2}{Numpad1}{Numpad3}{Tab}{Tab}{Tab}{Tab}{Enter}
	Sleep, 100
	WinActivate
	Sleep, 100
	Send, {LAlt Down}{r}{LAlt Up}{h}{s}
	Sleep, 100
	WinActivate
	Sleep, 100
	Send, {Tab}{Tab}{Numpad4}{Numpad0}{Tab}{Tab}{Enter}


	textureIID := Stubs[2]
	Sleep, 100
	Clipboard := WealthDefs[texture]
	iid := Wealth(textureIID)	
	Sleep, 100
	ExportTile(iid)		
	Sleep, 100
}