#Include %A_ScriptDir%\STARTUP - Gimp.ahk 


Loop, %RenderSet% {
	Send, {m}
	Sleep, 100
	texture := TextDefs[A_Index]

	; TRACKS CURVE
	file = %texture%_CURVE.png
	tracks = Street_Tracks_alpha_Bent.png
	ExtractTrack(file, tracks)
	SelectAllAndCopy()
	SelectNone()
	Sleep, 100
	Send, {LAlt Down}{i}{LAlt Up}{t}{w}
	Sleep, 100
	PasteAsNewLayer()
	LayerRotate180()
	ApplyTracks()
	LayerMergeDown()
	AlphaSelectionToChannel()
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
	Send, {LAlt Down}{l}{LAlt Up}{t}{o}
	Sleep, 100
	Send, {Numpad9}{Numpad0}
	Sleep, 100
	Send, {LAlt Down}{o}{LAlt Up}
	Sleep, 100
	ApplyTracks()
	LayerBoundarySize(256,128,0,-64)
	LayerMergeDown()
	AlphaSelectionToChannel()
	LayerActivate()

	; SURFACE CURVE
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
	Send, {LAlt Down}{l}{LAlt Up}{t}{o}
	Sleep, 100
	Send, {Numpad9}{Numpad0}
	Sleep, 100
	Send, {LAlt Down}{o}{LAlt Up}
	Sleep, 100
	ApplyTracks()
	LayerBoundarySize(64,108,-74,-74)
	LayerMergeDown()
	AlphaSelectionToChannel()
	LayerActivate()

	PasteAsNewLayer()
	LayerRotate180()
	LayerBoundarySize(256,128,0,0)
	PasteAsNewLayer()
	LayerRotateCounterClockwise()
	LayerBoundarySize(256,128,0,-128)
	LayerMergeDown()
	ApplyTracks()

	textureIID := Roundabout[1]
	Clipboard := WealthDefs[texture]
	iid := Wealth(textureIID)	
	Sleep, 100
	ExportTile(iid)		
	Sleep, 100

}