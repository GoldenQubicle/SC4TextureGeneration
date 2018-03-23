#Include %A_ScriptDir%\STARTUP - Gimp.ahk 


Loop, %RenderSet% {
	Send, {m}
	Sleep, 100
	texture := TextDefs[A_Index]
	file = %texture%_Diagonal.png
	tracks = Street_Tracks_alpha_Diagonal.png

	; ExtractTrack(file, tracks)
	; ; LayerRotateCounterClockwise()
	; Send, {LAlt Down}{i}{LAlt Up}{t}{w}
	; Sleep, 100

	; TRACK SETUP ORTHO
	file = %texture%.png
	tracks = Street_Tracks_alpha.png
	ExtractTrack(file, tracks)
	CopyClosePasteFile()

	; ; GET SMALL CURVE
	; file = %texture%_CURVE.png
	; tracks = Street_Tracks_alpha_Bent.png
	; ExtractTrack(file, tracks)
	; CopyClosePasteFile()
	; LayerRotateCounterClockwise()
	; LayerOffset(0,-64)
	; Shear(0,96)
	; ApplyTracks()
	; SelectAllAndCopy()
	; SelectNone()
	; LayerBoundarySize(224,256,0,0)
	; PasteAsNewLayer()
	; LayerBoundarySize(32,110,-224,0)
	; LayerMergeDown()
	; LayerMergeDown()
	; AlphaSelectionToChannel()
	; LayerActivate()


	; ; GET SMALL CURVE AGAIN
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
}