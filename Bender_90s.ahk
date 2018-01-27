#Include %A_ScriptDir%\Bender_startup.ahk 
; #Include %A_ScriptDir%\Bender_selectFile.ahk 

	wrc := WRC[1]

	; best quarter & backfill
	Sleep, 100
	Click, 682, 717 Left, , Down
	Sleep, 100
	Click, 682, 717 Left, , Up

Loop, 3{
	texture := TextDefs[A_Index]
	Sleep, 100
	OpenFileDialogue()
	Sleep, 100
	SelectFile(texture)

	; set box size
	Sleep, 100
	Click, 49, 365 Left, , Down
	Sleep, 100
	Click, 49, 365 Left, , Up
	Sleep, 100
	Click, 207, 389 Left, , Down
	Sleep, 100
	Click, 207, 389 Left, , Up
	Sleep, 100
	Click, 207, 389 Left, , Down
	Sleep, 100
	Click, 207, 389 Left, , Up
	Sleep, 100

	Sleep, 100
	Click, 1157, 723 Left, , Down
	Sleep, 100
	Click, 1157, 723 Left, , Up
	Sleep, 100
	Click, 393, 280 Left, , Down
	Sleep, 100
	Click, 393, 280 Left, , Up
	Sleep, 100
	Send, %wrc%%texture%.png
	Sleep, 100
	Send, {Tab}{Down}{Down}{Enter}
	Sleep, 100
	Send, {Enter}
	WinActivate, Confirm Save As ahk_class #32770
	Send, {Tab}{Enter}	
	Sleep, 100
}
WinClose, Bender