#Include %A_ScriptDir%\STARTUP - Gimp.ahk 

wrc := WRC[2]

Loop, %RenderSet% {
	Send, {m}
	Sleep, 100
	texture := TextDefs[A_Index]
	file = %wrc%%texture%
	tracks = WRC_90l_Street_Tracks_alpha.png
	ExtractTrack(file, tracks)
	
	; CROP THA CURVE TRACKS
	Send, {LAlt Down}{i}{LAlt Up}{t}{1}
	Sleep, 100
	Send, {LAlt Down}{i}{LAlt Up}{v}
	Sleep, 100
	Send, {Numpad2}{Numpad5}{Numpad6}
	Sleep, 100
	Send, {Tab}{Tab}
	Sleep, 100
	Send, {Numpad2}{Numpad5}{Numpad6}
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
	LayerBoundarySize(256,240,0,-16)
	LayerMergeDown()
	AlphaSelectionToChannel()
	LayerActivate()
	PasteAsNewLayer()
	Shear(64,0)
	LayerOffset(8,0)
	ApplyTracks()
	LayerBoundarySize(184,230,-16,0)
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
	LayerBoundarySize(100,112,-28,-16)
	PasteAsNewLayer()
	Shear(64,0)
	LayerOffset(8,0)
	ApplyTracks()
	LayerBoundarySize(100,112,-28,-128)

	; SURFACE ORTHO
	file = %texture%.png
	Sleep, 350
	SelectFile(file)
	Sleep, 350
	Click
	CopyClosePasteFile()
	LayerRotateClockwise()
	ApplyTracks()
	LayerBoundarySize(28,256,0,0)

	; CROP THA SURFACE CURVE
	file = %wrc%%texture%
	Sleep, 350
	SelectFile(file)
	Sleep, 350
	Click
	Send, {LAlt Down}{i}{LAlt Up}{t}{1}
	Sleep, 100
	Send, {LAlt Down}{i}{LAlt Up}{v}
	Sleep, 100
	Send, {Numpad2}{Numpad5}{Numpad6}
	Sleep, 100
	Send, {Tab}{Tab}
	Sleep, 100
	Send, {Numpad2}{Numpad5}{Numpad6}
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
	LayerBoundarySize(256,16,0,0)
	PasteAsNewLayer()
	LayerBoundarySize(256,16,0,-240)
	PasteAsNewLayer()
	LayerBoundarySize(128,224,-128,-16)

	textureIID := 90l[6]
	Clipboard := WealthDefs[texture]
	iid := Wealth(textureIID)	
	Sleep, 100
	ExportTile(iid)		
	Sleep, 100
}