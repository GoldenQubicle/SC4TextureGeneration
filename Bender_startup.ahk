#SingleInstance force
#NoEnv
#Warn
#Include %A_ScriptDir%\config.ahk 

Run, C:\Program Files (x86)\GoFSH Package\Bender.exe, %WorkDir%, Max
WinActivate, Bender ©2015-7 rivit  v2.4.0.0 ahk_class WindowsForms10.Window.8.app.0.378734a


OpenAndSelectFile(texture){
	Sleep, 500
	Click, 155, 168 Left, , Down
	Sleep, 100
	Click, 155, 168 Left, , Up
	Sleep, 100	
	Send, %texture%.png
	Sleep, 100
	Send, {Enter}
	Sleep, 100

}

OpenFileDialogue(){
	WinActivate, Bender ©2015-7 rivit  v2.4.0.0 ahk_class WindowsForms10.Window.8.app.0.378734a

	Sleep, 100
	Click, 190, 185 Left, , Down
	Sleep, 100
	Click, 189, 185 Left, , Up
	Sleep, 100
	WinActivate, Select Image File To Load ahk_class #32770
	Sleep, 100
	Send, {Tab}
	Sleep, 100
	Send, {Down}
	Sleep, 100
	Send, {Down}
	Sleep, 100
	Send, {Down}
	Sleep, 100
	Send, {Enter}
	Sleep, 100
	Send, {Tab}
	Sleep, 100
	Send, {Tab}
	Sleep, 100
	Send, {Tab}
	Sleep, 100
	Send, {Tab}
	Sleep, 100
	Send, {Tab}
	Sleep, 100
	Send, {Tab}
	Sleep, 100
	Send, {Tab}
	Sleep, 100
	Send, {Tab}
	Sleep, 100
}

GetSelectedFileName(){
Sleep, 50
Clipboard = 
Sleep, 50
Send, ^c
Sleep, 50
return Clipboard
}

SelectFile(texture){
Loop
{	
		name := GetSelectedFileName()
		IfInString, name, %texture%
		{
			Send, {Enter}
			break
		} else {
			Sleep, 50
			Send, {Right} 
			Continue
		}
	}
}

