#Include %A_ScriptDir%\STARTUP - Gimp.ahk 


Loop, %RenderSet% {

	texture := TextDefs[A_Index]
	file = %texture%.png
	Sleep, 100
	SelectFile(file)
	Sleep, 1000
	Click

	Sleep, 100
	Send, {LAlt Down}{i}{LAlt Up}{t}{w}
	Sleep, 100
	WinActivate
	Sleep, 333
	Send, {LAlt Down}{i}{LAlt Up}{v}
	WinActivate
	Sleep, 100
	Send, {Numpad5}{Numpad1}{Numpad2}
	Sleep, 100
	Send, {LAlt Down}{r}{LAlt Up}{Right}{Enter}
	Sleep, 100

	file = %texture%_Diagonal.png
	SelectFile(file)
	Sleep, 1000
	Click	

	Sleep, 100
	Send, {LAlt Down}{i}{LAlt Up}{t}{c}
	Sleep, 100
	Send, {LControl Down}{a}{LControl Up}
	Sleep, 100
	Send, {LControl Down}{LShift Down}{c}{LShift Up}{LControl Up}
	Sleep, 100
	Send, {LControl Down}{w}{LControl Up}
	Sleep, 100
	WinActivate
	Send, {LAlt Down}{d}{LAlt Up}
	Sleep, 100
	WinActivate
	Sleep, 100
	Send, {LAlt Down}{e}{LAlt Up}{a}{l}
	Sleep, 100	
	WinActivate
	Sleep, 100
	Send, {LAlt Down}{l}{LAlt Up}{o}{o}{Enter}
	Sleep, 100
	WinActivate
	Sleep, 100
	Send, {Numpad2}{Numpad5}{Numpad6}
	Sleep, 100	
	Send, {LAlt Down}{o}{LAlt Up}
	Sleep, 250	
	WinActivate	
	Sleep, 250

	file = %texture%_DiaOrtho.png
	SelectFile(file)
	Sleep, 1000
	Click	

	Sleep, 100
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
	Send, {Numpad5}{Numpad1}{Numpad2}
	Sleep, 100
	Send, {Tab}
	Sleep, 100	
	Send, {Tab}
	Sleep, 100
	Send, {Numpad2}{Numpad5}{Numpad6}
	Sleep, 100
	Send, {LAlt Down}{r}{LAlt Up}	
	Sleep, 500
	Send, {Right}
	Sleep, 100
	Send, {Enter}
	Sleep, 100
	WinActivate
	Sleep, 100
	Send, {LAlt Down}{l}{LAlt Up}{i}
	Sleep, 100
	Send, {LControl Down}{a}{LControl Up}
	Sleep, 100
	Send, {LControl Down}{LShift Down}{c}{LControl Up}{LShift Up}
	Sleep, 100
	Send, {LControl Down}{w}{LControl Up}
	Sleep, 100
	WinActivate
	Sleep, 100
	Send, {LAlt Down}{d}{LAlt Up}
	Sleep, 100
	WinActivate
	Sleep, 100
	Send, {LAlt Down}{e}{LAlt Up}{a}{l}
	Sleep, 100

	Send, {LAlt Down}{l}{LAlt Up}{a}{p}
	Sleep, 100	
	Send, {PgDn}
	Loop, 5{
		Sleep, 100
		Send, {Delete}
	}	
	Sleep, 100
	Send, {PgDn}
	Loop, 5{
		Sleep, 100
		Send, {Delete}
	}
	
	Sleep, 100
	Send, {LControl Down}{LShift Down}{a}{LShift Up}{LControl Up}
	Sleep, 100
	Send, {LAlt Down}{l}{LAlt Up}
	Loop, 5{
		Sleep, 100
		Send, {Up}
	}
	Send, {Enter}
	Sleep, 100	
	WinActivate
	Sleep, 100
	Send, {Numpad8}{Numpad8}
	Sleep, 100
	Send, {Tab}
	Sleep, 100
	Send, {LAlt Down}{r}{LAlt Up}
	Sleep, 100
	Send, {Right}
	Sleep, 100
	Send, {Enter}
	Sleep, 100
	WinActivate
	Sleep, 100
	Send, {PgUp}
	Sleep, 100
	Send, {LAlt Down}{l}{LAlt Up}
	Loop, 5{
		Sleep, 100
		Send, {Up}
	}
	Sleep, 100
	Send, {Enter}
	Sleep, 100
	WinActivate
	Sleep, 100
	Send, {Tab}
	Sleep, 100
	Send, {Tab}
	Sleep, 100
	Send, {Numpad6}{Numpad0}
	Sleep, 100
	Send, {Tab}
	Sleep, 100
	Send, {Tab}
	Sleep, 100
	Send, {Tab}
	Sleep, 100
	Send, {NumpadSub}{Numpad1}{Numpad9}{Numpad6}
	Sleep, 100
	Send, {Tab}
	Sleep, 100
	Send, {LAlt Down}{r}{LAlt Up}
	Sleep, 100
	Send, {Right}
	Sleep, 100
	Send, {Enter}
	Sleep, 100
	WinActivate
	Sleep, 100
	Send, {LAlt Down}{i}{LAlt Up}
	Sleep, 100
	Send, {g}
	Sleep, 100
	Send, {Enter}
	Sleep, 100
	WinActivate
	Sleep, 100
	Send, {Down}
	Sleep, 100
	Send, {LAlt Down}{o}{LAlt Up}
	Sleep, 100
	WinActivate
	Sleep, 100	
	Send, {LAlt Down}{i}{LAlt Up}{t}{g}
	Sleep, 100

	Send, {LAlt Down}{i}{LAlt Up}{t}{w}	
	textureIID := DiaOrtho[1]
	Clipboard := WealthDefs[texture]
	iid := Wealth(textureIID)	
	; iid = Street_v00_DO2
	Sleep, 100
	ExportTile(iid)		
	Sleep, 100

	Send, {LAlt Down}{i}{LAlt Up}{t}{c}	
	Sleep, 100
	Send, {LAlt Down}{i}{LAlt Up}{t}{h}
	Sleep, 100

	textureIID := DiaOrtho[2]
	Clipboard := WealthDefs[texture]
	iid := Wealth(textureIID)	
	; iid = Street_v00_DO1
	Sleep, 100
	ExportTile(iid)		
	Sleep, 100

	Send, {LControl Down}{w}{LControl Up}
	Sleep, 100
	Send, {LAlt Down}{d}{LAlt Up}
	Sleep, 500
	
}
	