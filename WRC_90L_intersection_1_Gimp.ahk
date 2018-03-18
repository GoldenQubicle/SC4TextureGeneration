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
	Send, {Tab}{Tab}{Tab}
	Sleep, 100
	Send, {NumpadSub}{Numpad2}{Numpad5}{Numpad6}
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
	Shear(48,0)
	LayerOffset(64,0)
	ApplyTracks()
	LayerBoundarySize(180,240,-76,-16)
	LayerMergeDown()
	AlphaSelectionToChannel()
	LayerActivate()

	PasteAsNewLayer()
	LayerOffset(138,0)
	ApplyTracks()
	LayerBoundarySize(250,200,0,0)
	LayerMergeDown()
	AlphaSelectionToChannel()
	LayerActivate()

	; ; GET ORTHO TRACKS
	file = %texture%.png
	tracks = Street_Tracks_alpha.png
	ExtractTrack(file, tracks)
	CopyClosePasteFile()
	LayerRotateClockwise()
	ApplyTracks()
	LayerBoundarySize(138,256,0,0)
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
	Shear(48,0)
	LayerOffset(64,0)
	ApplyTracks()
	LayerBoundarySize(128,112,-64,-16)
	PasteAsNewLayer()
	LayerOffset(138,0)
	ApplyTracks()
	LayerBoundarySize(84,100,-138,-128)

	; SURFACE ORTHO
	file = %texture%.png
	Sleep, 350
	SelectFile(file)
	Sleep, 350
	Click
	CopyClosePasteFile()
	LayerRotateClockwise()
	ApplyTracks()
	LayerBoundarySize(64,128,0,0)
	PasteAsNewLayer()
	LayerRotateClockwise()
	ApplyTracks()
	LayerBoundarySize(138,128,0,-128)

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
	Send, {Tab}{Tab}{Tab}
	Sleep, 100
	Send, {NumpadSub}{Numpad2}{Numpad5}{Numpad6}
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
	LayerBoundarySize(256,28,0,-228)
	PasteAsNewLayer()
	LayerBoundarySize(64,112,-192,-16)
	PasteAsNewLayer()
	LayerBoundarySize(34,100,-222,-128)

	textureIID := 90l[7]
	Clipboard := WealthDefs[texture]
	iid := Wealth(textureIID)	
	Sleep, 100
	ExportTile(iid)		
	Sleep, 100
}