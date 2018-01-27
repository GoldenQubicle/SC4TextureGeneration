SelectFile(texture){
	Sleep, 100
	Send, {LControl Down}{o}{LControl Up}
	Sleep, 100
	WinActivate, Open Image ahk_class gdkWindowToplevel
	Sleep, 100
	Send, {LControl Down}{a}{LControl Up}{Delete}
	Sleep, 100
	Send, %texture%
	Sleep, 100
	Send, {Enter}
	WinActivate

}
