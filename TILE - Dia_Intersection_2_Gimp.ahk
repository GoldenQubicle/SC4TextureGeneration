#Include %A_ScriptDir%\STARTUP - Gimp.ahk 


Loop, %RenderSet% {
	Send, {m}
	Sleep, 100
	texture := TextDefs[A_Index]
	file = %texture%_Diagonal.png
	tracks = Street_Tracks_alpha_Diagonal.png
	; TRACK SETUP DIA
	; ExtractTrack(file, tracks)
	; LayerRotateCounterClockwise()

}