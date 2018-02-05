#Include %A_ScriptDir%\STARTUP - Gimp.ahk 

wrc := WRC[2]

Loop,%RenderSet% {
	texture := TextDefs[A_Index]
	curve = %wrc%%texture%
	Sleep, 100
	SelectFile(curve)
	Sleep, 1000
	Click
	Sleep, 100
	GuideNSlice()
	Sleep, 2500

	
	Sleep, 100
	Sleep, 100
	Send, {LAlt Down}{i}{LAlt Up}{t}{1}
	textureIID := 90l[1]
	Clipboard := WealthDefs[texture]
	iid := Wealth(textureIID)	
	Sleep, 100
	ExportTile(iid)		
	Sleep, 100
	
	Loop, 3{
		closeFile()
		Sleep, 100
	}	
	Sleep, 100
	Send, {LAlt Down}{i}{LAlt Up}{t}{1}
	Sleep, 100
	textureIID := 90l[2]
	Clipboard := WealthDefs[texture]
	iid := Wealth(textureIID)	
	Sleep, 100
	ExportTile(iid)		
	Sleep, 100

	Sleep, 100
	Send, {LAlt Down}{i}{LAlt Up}{t}{1}
	Sleep, 100
	textureIID := 90l[3]
	Clipboard := WealthDefs[texture]
	iid := Wealth(textureIID)	
	Sleep, 100
	ExportTile(iid)		
	Sleep, 100

	Loop, 2{
		closeFile()
		Sleep, 100
	}	

	Sleep, 100
	Send, {LAlt Down}{i}{LAlt Up}{t}{1}
	Sleep, 100
	textureIID := 90l[4]
	Clipboard := WealthDefs[texture]
	iid := Wealth(textureIID)	
	Sleep, 100
	ExportTile(iid)		
	Sleep, 100

	Sleep, 100
	Send, {LAlt Down}{i}{LAlt Up}{t}{1}
	Sleep, 100
	textureIID := 90l[5]

	
	Clipboard := WealthDefs[texture]
	iid := Wealth(textureIID)	
	Sleep, 100
	ExportTile(iid)		
	Sleep, 100

	Send, {LControl Down}{LShift Down}{w}{LShift Up}{LControl Up}

	; Send, {LAlt Down}{f}{LAlt Up}{c}
	; WinActivate
	; Sleep, 100
	; Send, {LControl Down}{d}{LControl Up}
	; WinActivate
	; Sleep, 100
	; Send, {LAlt Down}{f}{LAlt Up}{c}
	; WinActivate
	Sleep, 100
	Send, {LAlt Down}{d}{LAlt Up}
	WinActivate
	Sleep, 100

}

GuideNSlice(){

WinActivate
Sleep, 100
Send, {LAlt Down}{i}{LAlt Up}{g}{Enter}
WinActivate, Script-Fu: New Guide (by Percent) ahk_class gdkWindowToplevel
Sleep, 100
Send, {Up}
Sleep, 100
Send, {Tab}{Numpad2}{Numpad5}{NumpadEnter}
WinActivate, *[WRC_90l_Street_v10] (imported)-1.0 (RGB color, 1 layer) 1024x1024 – GIMP ahk_class gdkWindowToplevel
Sleep, 100
Send, {LAlt Down}{i}{LAlt Up}{g}{Enter}
WinActivate, Script-Fu: New Guide (by Percent) ahk_class gdkWindowToplevel
Sleep, 100
Send, {Tab}{Numpad5}{Numpad0}{NumpadEnter}
WinActivate, *[WRC_90l_Street_v10] (imported)-1.0 (RGB color, 1 layer) 1024x1024 – GIMP ahk_class gdkWindowToplevel
Sleep, 100
Send, {LAlt Down}{i}{LAlt Up}{g}{Enter}
WinActivate, Script-Fu: New Guide (by Percent) ahk_class gdkWindowToplevel
Sleep, 100
Send, {Tab}{Numpad7}{Numpad5}{NumpadEnter}
WinActivate, *[WRC_90l_Street_v10] (imported)-1.0 (RGB color, 1 layer) 1024x1024 – GIMP ahk_class gdkWindowToplevel
Sleep, 100
Send, {LAlt Down}{i}{LAlt Up}{g}{Enter}
WinActivate, Script-Fu: New Guide (by Percent) ahk_class gdkWindowToplevel
Sleep, 100
Send, {Down}{Tab}
Sleep, 100
Send, {Numpad2}{Numpad5}{Enter}
WinActivate, *[WRC_90l_Street_v10] (imported)-1.0 (RGB color, 1 layer) 1024x1024 – GIMP ahk_class gdkWindowToplevel
Sleep, 100
Send, {LAlt Down}{i}{LAlt Up}{g}{Enter}
WinActivate, Script-Fu: New Guide (by Percent) ahk_class gdkWindowToplevel
Sleep, 100
Send, {Tab}{Numpad5}{Numpad0}{NumpadEnter}
WinActivate, *[WRC_90l_Street_v10] (imported)-1.0 (RGB color, 1 layer) 1024x1024 – GIMP ahk_class gdkWindowToplevel
Sleep, 100
Send, {LAlt Down}{i}{LAlt Up}{g}{Enter}
WinActivate, Script-Fu: New Guide (by Percent) ahk_class gdkWindowToplevel
Sleep, 100
Send, {Tab}{Numpad7}{Numpad5}{NumpadEnter}
Sleep, 100
Send, {LAlt Down}{i}{LAlt Up}{t}{g}
Sleep, 100
}