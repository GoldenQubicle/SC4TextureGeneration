#Include %A_ScriptDir%\Gimp_startup.ahk 


Loop, %RenderSet% {

	texture := TextDefs[A_Index]

	Sleep, 100
	SelectFile(texture)
	Sleep, 100

	Sleep, 100
	textureIID := Ortho[1]
	Clipboard := WealthDefs[texture]
	iid := Wealth(textureIID)	
	Sleep, 100
	ExportTile(iid)		
	Sleep, 100

}