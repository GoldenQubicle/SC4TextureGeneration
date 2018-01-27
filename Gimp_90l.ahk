#Include %A_ScriptDir%\Gimp_startup.ahk 
#Include %A_ScriptDir%\Gimp_selectFile.ahk 

wrc := WRC[2]

Loop, 1{
	texture := TextDefs[A_Index]
	curve = %wrc%%texture%
	Sleep, 100
	SelectFile(curve)
	Sleep, 1000
	Click
	Sleep, 100
	GuideNSlice()
	Sleep, 1000

	
	Sleep, 100
	textureIID := 90l[1]
	Sleep, 100
	ExportTile(textureIID)		
	Sleep, 100
	
	Loop, 3{
		closeFile()
		Sleep, 100
	}	
	
	Sleep, 100
	textureIID := 90l[2]
	Sleep, 100
	ExportTile(textureIID)		
	Sleep, 100

	Sleep, 100
	textureIID := 90l[3]
	Sleep, 100
	ExportTile(textureIID)		
	Sleep, 100

	Loop, 2{
		closeFile()
		Sleep, 100
	}	

	Sleep, 100
	textureIID := 90l[4]
	Sleep, 100
	ExportTile(textureIID)		
	Sleep, 100

	Sleep, 100
	textureIID := 90l[5]
	Sleep, 100
	ExportTile(textureIID)		
	Sleep, 100
}

GuideNSlice(){

WinActivate
Sleep, 100
Send, {LAlt Down}{i}{LAlt Up}{g}{Enter}
WinActivate, Script-Fu: New Guide (by Percent) ahk_class gdkWindowToplevel
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
Send, {Down}{Tab}{Numpad2}{Numpad5}{Enter}
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