#Include %A_ScriptDir%\STARTUP - Gimp.ahk 


Loop, %RenderSet% {

	texture := TextDefs[A_Index]
	file = %texture%_DiaOrtho.png
	SelectFile(file)
	Sleep, 1000

}