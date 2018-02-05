#Include %A_ScriptDir%\STARTUP - Gimp.ahk 


Loop,%RenderSet% {
	texture := TextDefs[A_Index]
	file = %texture%_Stub.png
	SelectFile(file)
	Sleep, 100
	textureIID := Stubs[1]
	Sleep, 100
	Clipboard := WealthDefs[texture]
	iid := Wealth(textureIID)	
	Sleep, 100
	ExportTile(iid)		
	Sleep, 100

}