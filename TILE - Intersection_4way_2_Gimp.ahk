#Include %A_ScriptDir%\STARTUP - Gimp.ahk 


Loop, %RenderSet% {

	texture := TextDefs[A_Index]

	; TRACKS ORTHO
	file = %texture%_DO1.png
	tracks = Street_Tracks_alpha_DO1.png
	ExtractTrack(file, tracks)

	file = %texture%.png
	tracks = Street_Tracks_alpha.png
	ExtractTrack(file, tracks)
	Sleep, 100
	CopyClosePasteFile()

	LayerRotateClockwise()
	ApplyTracks()
	LayerMergeDown()
	AlphaSelectionToChannel()
	LayerActivate()

	; TRACKS CURVE
	file = %texture%_CURVE.png
	tracks = Street_Tracks_alpha_Bent.png
	ExtractTrack(file, tracks)
	Sleep, 100
	CopyClosePasteFile()

	Shear(64,0)
	ApplyTracks()
	LayerBoundarySize(156,228,-15,0)
	LayerMergeDown()
	AlphaSelectionToChannel()
	LayerActivate()

	PasteAsNewLayer()
	LayerRotateCounterClockwise()
	Shear(64,0)
	ApplyTracks()
	LayerBoundarySize(156,200,-90,-40)
	LayerMergeDown()
	AlphaSelectionToChannel()
	LayerActivate()

	PasteAsNewLayer()
	LayerRotate180()
	ApplyTracks()
	LayerMergeDown()
	AlphaSelectionToChannel()
	LayerActivate()

	PasteAsNewLayer()
	LayerRotateClockwise()
	ApplyTracks()
	LayerMergeDown()
	AlphaSelectionToChannel()
	LayerActivate()

	; SURFACE CURVES
	file = %texture%_CURVE.png
	Sleep, 350
	SelectFile(file)
	Sleep, 350
	Click
	CopyClosePasteFile()
	Shear(64,0)
	ApplyTracks()
	LayerBoundarySize(100,88,-18,-150)

	PasteAsNewLayer()
	LayerRotateCounterClockwise()
	Shear(64,0)
	ApplyTracks()
	LayerBoundarySize(70,88,-170,-150)

	PasteAsNewLayer()
	LayerRotate180()
	ApplyTracks()
	LayerBoundarySize(88,88,-150,-18)

	PasteAsNewLayer()
	LayerRotateClockwise()
	ApplyTracks()
	LayerBoundarySize(88,88,-18,-18)

	; SURFACE ORTHO
	file = %texture%_DO1.png
	Sleep, 350
	SelectFile(file)
	Sleep, 350
	Click
	CopyClosePasteFile()
	ApplyTracks()
	LayerBoundarySize(256,18,0,0)

	PasteAsNewLayer()
	ApplyTracks()
	LayerBoundarySize(256,18,0,-238)

	PasteAsNewLayer()
	ApplyTracks()
	LayerBoundarySize(77,132,-90,-18)

	PasteAsNewLayer()
	ApplyTracks()
	LayerBoundarySize(51,88,-118,-150)	

	 ; SURFACE ORTHO 
	file = %texture%.png
	Sleep, 350
	SelectFile(file)
	Sleep, 350
	Click
	CopyClosePasteFile()
	LayerRotateClockwise()
	SelectAllAndCopy()	
	ApplyTracks()
	LayerBoundarySize(18,256,0,0)

	PasteAsNewLayer()
	ApplyTracks()
	LayerBoundarySize(18,256,-238,0)

	PasteAsNewLayer()
	ApplyTracks()
	LayerBoundarySize(72,44,-18,-106)
	
	PasteAsNewLayer()
	ApplyTracks()
	LayerBoundarySize(72,44,-166,-106)


	textureIID := FourWays[2]
	Clipboard := WealthDefs[texture]
	iid := Wealth(textureIID)	
	Sleep, 100
	ExportTile(iid)		
	Sleep, 100
}


