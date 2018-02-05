#Include %A_ScriptDir%\STARTUP - Gimp.ahk 


Loop,%RenderSet% {
	texture := TextDefs[A_Index]
	file = %texture%_CURVE.png

	Sleep, 100
	SelectFile(file)
	Sleep, 1000


	Sleep, 100
	Send, {LAlt Down}{i}{LAlt Up}{t}{h}
	Sleep, 100

	textureIID := Curve[1]
	Clipboard := WealthDefs[texture]
	iid := Wealth(textureIID)	
	Sleep, 100
	ExportTile(iid)		
	Sleep, 100
	}