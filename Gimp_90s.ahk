#Include %A_ScriptDir%\Gimp_startup.ahk 
#Include %A_ScriptDir%\utils.ahk 


for i, master in TextDefs

	for j, curve in WRC

	    texture = %curve%%master%

		; MsgBox, %curve%%master%
		
		SelectFile(texture)