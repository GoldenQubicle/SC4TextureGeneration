#SingleInstance force
#NoEnv
#Warn
#Include %A_ScriptDir%\config.ahk 

Run, "C:\Program Files\GIMP 2\bin\gimp-2.8.exe" -f, %WorkDir%, Max
WinMaximize  

Sleep, 5000
WinActivate, GNU Image Manipulation Program ahk_class gdkWindowToplevel
Sleep, 100
Send, {LControl Down}{o}{LControl Up}
Sleep, 100
Send, {Down}
Sleep, 100


closeFile(){
	Sleep, 100
	WinActivate
	Sleep, 100
	Send, {LAlt Down}{f}{LAlt Up}{c}
	WinActivate
	Sleep, 100
	Send, {LControl Down}
	WinActivate
	Sleep, 100
	Send, {d}{LControl Up}
}

ExportTile(fileName){
	Sleep, 100
	Send, {LAlt Down}{i}{LAlt Up}{t}{1}
	Sleep, 100
	Send, {LControl Down}{LShift Down}{e}
	Sleep, 100
	WinActivate, Export Image ahk_class gdkWindowToplevel
	Sleep, 100
	Send, {LControl Up}{LShift Up} ;{LControl Down}{v}{LControl Up}{Enter}
	Sleep, 100
	Send, %fileName%
	Sleep, 100
	Send, {Enter}
	Sleep, 100
	WinActivate, Export Image as PNG ahk_class gdkWindowToplevel
	Sleep, 100
	Send, {Enter}
	Sleep, 100
	WinActivate, Export Image as PNG ahk_class gdkWindowToplevel
	Sleep, 333
	Send, {LAlt Down}{e}{LAlt Up}
	Sleep, 100
	WinActivate
	Sleep, 100
	Send, {LAlt Down}{f}{LAlt Up}
	Sleep, 100
	Send, {c}
	Sleep, 100
	Send, {LControl Down}{d}{LControl Up}
	Sleep, 100
}

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