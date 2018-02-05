#Include %A_ScriptDir%\STARTUP - Gimp.ahk 


Loop, %RenderSet% {

	texture := TextDefs[A_Index]
	file = %texture%.png
	Sleep, 100
	SelectFile(file)
	Sleep, 100

	Sleep, 100
	textureIID := Ortho[1]
	Clipboard := WealthDefs[texture]
	iid := Wealth(textureIID)	
	Sleep, 100
	ExportTile(iid)		
	Sleep, 100

}