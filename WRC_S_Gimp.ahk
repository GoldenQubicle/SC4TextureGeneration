#Include %A_ScriptDir%\Gimp_startup.ahk 

wrc := WRC[3]

Loop,%RenderSet% {
	texture := TextDefs[A_Index]
	curve = %wrc%%texture%
	Sleep, 100
	SelectFile(curve)
	Sleep, 1000
	Click
	Sleep, 250
	GuideNSlice()
	Sleep, 250


		Loop, 3 {
		Sleep, 100
		Send, {LAlt Down}{i}{LAlt Up}{t}{1}	
		Sleep, 100
		textureIID := SCurve[A_Index]
		Clipboard := WealthDefs[texture]
		iid := Wealth(textureIID)
		Sleep, 100
		ExportTile(iid)
		Sleep, 100
		}

	}




GuideNSlice(){

	Sleep, 100
	Send, {LAlt Down}{i}{LAlt Up}{g}{g}
	WinActivate, Script-Fu: New Guide ahk_class gdkWindowToplevel
	Sleep, 100
	Send, {Up}{Tab}
	Sleep, 100
	Send, {Numpad2}{Numpad5}{Numpad6}{NumpadEnter}
	WinActivate, *[WRC_S_Street_v10] (imported)-1.0 (RGB color, 1 layer) 768x512 – GIMP ahk_class gdkWindowToplevel
	Sleep, 100
	Send, {LAlt Down}{i}{LAlt Up}{g}{g}
	WinActivate, Script-Fu: New Guide ahk_class gdkWindowToplevel
	Sleep, 100
	Send, {Down}{Tab}{Numpad2}{Numpad5}{Numpad6}{NumpadEnter}
	WinActivate, *[WRC_S_Street_v10] (imported)-1.0 (RGB color, 1 layer) 768x512 – GIMP ahk_class gdkWindowToplevel
	Sleep, 100
	Send, {LAlt Down}{i}{LAlt Up}{g}{g}
	WinActivate, Script-Fu: New Guide ahk_class gdkWindowToplevel
	Sleep, 100
	Send, {Tab}{Numpad5}{Numpad1}{Numpad2}{NumpadEnter}
	WinActivate, *[WRC_S_Street_v10] (imported)-1.0 (RGB color, 1 layer) 768x512 – GIMP ahk_class gdkWindowToplevel
	Sleep, 100
	Send, {LAlt Down}{i}{LAlt Up}{t}{g}
	Sleep, 100

}
