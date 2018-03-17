#Include %A_ScriptDir%\STARTUP - Gimp.ahk 


Loop, %RenderSet% {
	Send, {m}
	Sleep, 100
	texture := TextDefs[A_Index]

	; TRACKS CURVE
	file = %texture%_CURVE.png
	SelectFile(file)
	Sleep, 500
	Click
	LayerFlipHorizontal()
	textureIID := Roundabout[2]
	Clipboard := WealthDefs[texture]
	iid := Wealth(textureIID)	
	Sleep, 100
	ExportTile(iid)		
	Sleep, 100

}