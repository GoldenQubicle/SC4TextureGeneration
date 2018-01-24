#Include %A_ScriptDir%\Bender_startup.ahk 

; TextDefs := ["Street_v10", "Street_v20", "Street_v30"]
; texture := TextDefs[1]

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

; Sleep, 50
; WcinActivate, Bender ©2015-7 rivit  v2.4.0.0 ahk_class WindowsForms10.Window.8.app.0.378734a
; Sleep, 333
; Send, {Enter}


; Sleep, 500
; WinGet, path, ProcessPath, A
; Sleep, 500
; Msgbox, %path%


; Loop Files, %WorkDir%\*.png
; {
; 	Filename = %A_LoopFileFullPath%
	
; 	For texture, definition in TextDefs

; 		IfInString, Filename, %definition%
; 		{
; 	    MsgBox, 4, , %Filename%`n`nContinue?
; 		}

;     IfMsgBox, No
;         break
; }
