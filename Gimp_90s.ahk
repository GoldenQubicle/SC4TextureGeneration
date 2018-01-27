; #Include %A_ScriptDir%\Gimp_startup.ahk 

#SingleInstance force
#NoEnv
#Warn
#Include %A_ScriptDir%\config.ahk 

Loop % TextDefs.MaxIndex()
{
	texture := TextDefs[A_Index]

	Loop % WRC.MaxIndex()
	{
		curve := WRC[A_Index]	
		MsgBox, %curve%%texture%
	}
}

; for i, master in TextDefs

; 	for j, curve in WRC

; 	    texture = %curve%%master%

		; MsgBox, %curve%%master%
		
