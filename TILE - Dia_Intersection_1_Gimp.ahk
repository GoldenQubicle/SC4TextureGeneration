#Include %A_ScriptDir%\STARTUP - Gimp.ahk 


Loop, %RenderSet% {
	Send, {m}
	Sleep, 100
	texture := TextDefs[A_Index]
	file = %texture%_Diagonal.png
	tracks = Street_Tracks_alpha_Diagonal.png
	; TRACK SETUP DIA
	ExtractTrack(file, tracks)
	SelectAllAndCopy()
	SelectNone()
	PasteAsNewLayer()
	LayerRotateCounterClockwise()
	ApplyTracks()
	LayerMergeDown()
	AlphaSelectionToChannel()
	LayerActivate()

	; GET SMALL CURVE
	file = %texture%_CURVE.png
	tracks = Street_Tracks_alpha_Bent.png
	ExtractTrack(file, tracks)
	CopyClosePasteFile()
	Send, {LAlt Down}{l}{LAlt Up}{t}{a}
	Sleep, 100
	Send, {Numpad4}{Numpad5}
	Sleep, 100
	Send, {Tab}{Enter}
	Sleep, 100
	Send, {LAlt Down}{l}{LAlt Up}{i}
	Sleep, 100
	Send, {LAlt Down}{r}{LAlt Up}{h}{s}
	Sleep, 100
	Send, {Tab}{Tab}
	Sleep, 100
	Send, {Numpad5}{Numpad0}
	Sleep, 100
	Send, {LAlt Down}{o}{LAlt Up}
	Sleep, 100
	LayerOffset(128,0)
	ApplyTracks()
	LayerMergeDown()
	AlphaSelectionToChannel()
	LayerActivate()

	; SURFACE CURVE
	file = %texture%_CURVE.png
 	SelectFile(file)
	Sleep, 500
	Click
	SelectAllAndCopy()
	closeFile()
	LayerActivate()
	PasteAsNewLayer()
	Send, {LAlt Down}{l}{LAlt Up}{t}{a}
	Sleep, 100
	Send, {Numpad4}{Numpad5}
	Sleep, 100
	Send, {Tab}{Enter}
	Sleep, 100
	Send, {LAlt Down}{l}{LAlt Up}{i}
	Sleep, 100
	Send, {LAlt Down}{r}{LAlt Up}{h}{s}
	Sleep, 100
	Send, {Tab}{Tab}
	Sleep, 100
	Send, {Numpad5}{Numpad0}
	Sleep, 100
	Send, {LAlt Down}{o}{LAlt Up}
	Sleep, 100
	LayerOffset(128,0)
	ApplyTracks()
	LayerBoundarySize(96,64,-112,-96)

	; SURFACE DIAGONAL
	file = %texture%_Diagonal.png
	SelectFile(file)
	Sleep, 500
	Click
	SelectAllAndCopy()
	closeFile()
	LayerActivate()
	PasteAsNewLayer()
	ApplyTracks()
	LayerBoundarySize(256,96,0,-160)
	PasteAsNewLayer()
	LayerRotateCounterClockwise()
	ApplyTracks()
	LayerBoundarySize(256,96,0,0)
	PasteAsNewLayer()
	ApplyTracks()
	LayerBoundarySize(48,32,-208,-128)
	PasteAsNewLayer()
	LayerRotateCounterClockwise()
	ApplyTracks()
	LayerBoundarySize(48,32,-208,-96)

	textureIID := DiaIntersections[2]
	Clipboard := WealthDefs[texture]
	iid := Wealth(textureIID)	
	Sleep, 100
	ExportTile(iid)		
	Sleep, 100
}