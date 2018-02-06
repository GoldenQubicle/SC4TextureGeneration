#Include %A_ScriptDir%\STARTUP - Gimp.ahk 


Loop, %RenderSet% {

	texture := TextDefs[A_Index]
	file = %texture%_DiaOrtho.png
	SelectFile(file)
	Sleep, 1000

	Send, {LAlt Down}{l}{LAlt Up}{Up}{Enter}
	Sleep, 100
	Send, {Numpad8}{Numpad8}
	Sleep, 100
	Send, {LAlt Down}{o}{LAlt Up}
	Sleep, 100
	Send, {LAlt Down}{i}{LAlt Up}{v}
	Sleep, 100
	Send, {Numpad2}{Numpad5}{Numpad6}
	Sleep, 100
	Send, {Tab}
	Sleep, 100
	Send, {Tab}
	Send, {Numpad2}{Numpad5}{Numpad6}
	Sleep, 100
	Send, {LAlt Down}{r}{LAlt Up}{Right}{Enter}
	Sleep, 100
	Send, {LAlt Down}{l}{LAlt Up}{i}
	Sleep, 100
	Send, {LAlt Down}{l}{LAlt Up}
	Loop, 5{
		Send, {Up}
		Sleep, 100
	}
	Send, {Enter}
	Sleep, 100
	Send, {Numpad5}{Numpad0}
	Sleep, 100
	Send, {Tab}
	Sleep, 100
	Send, {Tab}
	Sleep, 100
	Send, {Tab}
	Sleep, 100
	Send, {Tab}
	Sleep, 100
	Send, {NumpadSub}{Numpad2}{Numpad0}{Numpad6}
	Sleep, 100
	Send, {LAlt Down}{r}{LAlt Up}{Right}{Enter}
	Sleep, 250


	file = %texture%_CURVE.png
	SelectFile(file)
	Sleep, 1000
	Click

	Send, {LAlt Down}{i}{LAlt Up}{t}{w}
	Sleep, 100
	Send, {LControl Down}{a}{LControl Up}
	Sleep, 100
	Send, {LControl Down}{c}{LControl Up}
	Sleep, 100
	Send, {LControl Down}{w}{LControl Up}
	Sleep, 100
	Send, {LAlt Down}{d}{LAlt Up}
	Sleep, 250

	Send, {LAlt Down}{e}{LAlt Up}{a}{l}
	Sleep, 100
	Send, {LAlt Down}{l}{LAlt Up}
	Loop, 5{
		Send, {Up}
		Sleep, 100
	}
	Send, {Enter}
	Sleep, 100
	Send, {Numpad2}{Numpad0}{Numpad6}
	Sleep, 100
	Send, {LAlt Down}{r}{LAlt Up}{Right}{Enter}
	Sleep, 100
	Send, {LAlt Down}{i}{LAlt Up}{t}{c}
	Sleep, 100
	Send, {LAlt Down}{i}{LAlt Up}{t}{h}

	textureIID := DiaOrthoBend[1]
	Clipboard := WealthDefs[texture]
	iid := Wealth(textureIID)	
	Sleep, 100
	ExportTile(iid)		
	Sleep, 750
}