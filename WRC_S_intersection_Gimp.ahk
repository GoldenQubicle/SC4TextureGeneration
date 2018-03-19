#Include %A_ScriptDir%\STARTUP - Gimp.ahk 

wrc := WRC[3]

Loop, %RenderSet% {
	Send, {m}
	Sleep, 100
	texture := TextDefs[A_Index]
	file = %wrc%%texture%
	tracks = WRC_S_Street_Tracks_alpha.png

	ExtractTrack(file, tracks)

	; CROP THA CURVE TRACKS
	Send, {LAlt Down}{i}{LAlt Up}{v}
	Sleep, 100
	Send, {Numpad2}{Numpad5}{Numpad6}
	Sleep, 100
	Send, {Tab}{Tab}
	Sleep, 100
	Send, {Numpad2}{Numpad5}{Numpad6}
	Sleep, 100
	Send, {Tab}{Tab}{Tab}
	Sleep, 100
	Send, {LAlt Down}{r}{LAlt Up}
	Sleep, 100
	Send, {LAlt Down}{r}{LAlt Up}{Enter}
	Sleep, 100
	Send, {LAlt Down}{l}{LAlt Up}{i}
	SelectNone()

	; GET SMALL CURVE
	file = %texture%_CURVE.png
	tracks = Street_Tracks_alpha_Bent.png
	ExtractTrack(file, tracks)
	CopyClosePasteFile()
	LayerRotateClockwise()
	ApplyTracks()
	LayerBoundarySize(240,256,-16,0)
	LayerMergeDown()
	AlphaSelectionToChannel()
	LayerActivate()
	PasteAsNewLayer()
	LayerRotate180()
	Shear(0,84)
	LayerOffset(0,16)
	ApplyTracks()
	LayerBoundarySize(212,200,0,0)
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
	LayerRotateClockwise()
	ApplyTracks()
	LayerBoundarySize(112,112,-16,-16)
	PasteAsNewLayer()
	LayerRotate180()
	Shear(0,84)
	LayerOffset(0,16)
	ApplyTracks()
	LayerBoundarySize(88,88,-128,-40)

	; ; SURFACE WRC
	file = %wrc%%texture%
	Sleep, 350
	SelectFile(file)
	Sleep, 350
	Click
	; CROP THA CURVE 
	Send, {LAlt Down}{i}{LAlt Up}{v}
	Sleep, 100
	Send, {Numpad2}{Numpad5}{Numpad6}
	Sleep, 100
	Send, {Tab}{Tab}
	Sleep, 100
	Send, {Numpad2}{Numpad5}{Numpad6}
	Sleep, 100
	Send, {Tab}{Tab}{Tab}
	Sleep, 100
	Send, {LAlt Down}{r}{LAlt Up}
	Sleep, 100
	Send, {LAlt Down}{r}{LAlt Up}{Enter}
	Sleep, 100
	Send, {LAlt Down}{l}{LAlt Up}{i}
	SelectNone()
	CopyClosePasteFile()
	ApplyTracks()
	SelectAllAndCopy()
	SelectNone()
	LayerBoundarySize(40,256,-216,0)
	PasteAsNewLayer()
	LayerBoundarySize(16,256,0,0)
	PasteAsNewLayer()
	LayerBoundarySize(200,128,-16,-128)

	; SURFACE ORTHO
	file = %texture%.png
	Sleep, 350
	SelectFile(file)
	Sleep, 350
	Click
	CopyClosePasteFile()
	ApplyTracks()
	LayerBoundarySize(128,16,0,0)
	PasteAsNewLayer()
	ApplyTracks()
	LayerBoundarySize(128,40,-128,0)

	textureIID := SCurve[4]
	Clipboard := WealthDefs[texture]
	iid := Wealth(textureIID)	
	Sleep, 100
	ExportTile(iid)		
	Sleep, 100
}