#Include %A_ScriptDir%\STARTUP - Gimp.ahk 


Loop, %RenderSet% {
	Send, {m}
	Sleep, 100
	texture := TextDefs[A_Index]

	; TRACKS ORTHO
	file = %texture%_DO1.png
	tracks = Street_Tracks_alpha_DO1.png
	ExtractTrack(file, tracks)
	LayerBoundarySize(256,128,0,-128)
	SelectAllAndCopy()
	PasteAsNewLayer()
	Send, {LAlt Down}{l}{LAlt Up}{t}{v}
	Sleep, 100
	LayerMergeDown()
	AlphaSelectionToChannel()

	; TRACKS CURVE
	file = %texture%_CURVE.png
	tracks = Street_Tracks_alpha_Bent.png
	ExtractTrack(file, tracks)
	CopyClosePasteFile()
	Shear(64,0)
	ApplyTracks()
	LayerBoundarySize(156,256,-18,0)
	LayerMergeDown()
	AlphaSelectionToChannel()
	LayerActivate()
	PasteAsNewLayer()
	Send, {LAlt Down}{l}{LAlt Up}{t}{c}
	Sleep, 100
	Shear(-64,0)
	ApplyTracks()
	LayerBoundarySize(156,256,-18,0)
	LayerMergeDown()
	AlphaSelectionToChannel()
	LayerActivate()

	; SURFACE CURVE
	file = %texture%_CURVE.png
	Sleep, 350
	SelectFile(file)
	Sleep, 350
	Click
	CopyClosePasteFile()
	Shear(64,0)
	ApplyTracks()
	LayerBoundarySize(100,100,-18,-128)
	PasteAsNewLayer()
	Send, {LAlt Down}{l}{LAlt Up}{t}{c}
	Sleep, 100
	Shear(-64,0)
	ApplyTracks()
	LayerBoundarySize(100,100,-18,-28)

	; SURFACE ORTHO
	file = %texture%_DO1.png
	Sleep, 350
	SelectFile(file)
	Sleep, 350
	Click
	CopyClosePasteFile()
	LayerBoundarySize(256,128,0,-128)
	SelectAllAndCopy()
	PasteAsNewLayer()
	Send, {LAlt Down}{l}{LAlt Up}{t}{v}
	Sleep, 100
	LayerMergeDown()
	ApplyTracks()
	SelectAllAndCopy()
	SelectNone()
	LayerBoundarySize(256,28,0,0)
	PasteAsNewLayer()
	LayerBoundarySize(256,28,0,-228)
	PasteAsNewLayer()
	LayerBoundarySize(138,200,-118,-28)

	; SURFACE FINAL ITTY BIT
	file = %texture%.png
	Sleep, 350
	SelectFile(file)
	Sleep, 350
	Click
	CopyClosePasteFile()
	Send, {LAlt Down}{l}{LAlt Up}{t}{c}
	Sleep, 100
	LayerBoundarySize(18,256,0,0)
	Sleep, 100
	Send, {LAlt Down}{i}{LAlt Up}{t}{h}

	textureIID := ThreeWays[6]
	Clipboard := WealthDefs[texture]
	iid := Wealth(textureIID)	
	Sleep, 100
	ExportTile(iid)		
	Sleep, 100
}