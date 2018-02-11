#Include %A_ScriptDir%\STARTUP - Gimp.ahk 


Loop, %RenderSet% {

	texture := TextDefs[A_Index]

	; TRACK SETUP
	; track ortho
	file = %texture%.png
	SelectFile(file)
	Sleep, 500
	Click
	file = Street_Tracks_alpha.png
	SelectFile(file)
	Sleep, 500
	Click
	CopyClosePasteFile()
	Send, {LControl Down}{LShift Down}{n}{LControl Up}{LShift Up} 	
	AlphaSelectionToChannel()
	LayerActivate()
	LayerDelete()
	ChannelToSelection()
	LayerActivate()
	Send, {LAlt Down}{s}{LAlt Up}{i}{Delete}
	SelectNone()

	; track curves
	file = Street_Tracks_alpha_Bent.png
	SelectFile(file)
	Sleep, 500
	Click
	AlphaSelectionToChannel()
	LayerActivate()
	LayerDelete()
	file = %texture%_CURVE.png
	SelectFile(file)
	Sleep, 500
	Click
	CopyClosePasteFile()
	ChannelToSelection()
	LayerActivate()
	Send, {LAlt Down}{s}{LAlt Up}{i}{Delete}
	Sleep, 100
	SelectNone()
	CopyClosePasteFile()
	Send, {LControl Down}{LShift Down}{n}{LControl Up}{LShift Up} 

	ChannelToSelection()
	LayerActivate()
	Send, {Delete}
	SelectNone()

	PasteAsNewLayer()

	Sleep, 100
	Send, {LAlt Down}{l}{LAlt Up}{t}{1}
	Sleep, 100
	ChannelToSelection()
	LayerActivate()
	Send, {Delete}
	SelectNone()

	LayerMergeDown()
	LayerMergeDown()

	AlphaSelectionToChannel()
	SelectNone()
	LayerActivate()
	SelectAllAndCopy()
	PasteAsNewLayer()
	Sleep, 100
	Send, {LAlt Down}{l}{LAlt Up}{t}{c}
	Sleep, 100	
	ChannelToSelection()
	LayerActivate()
	Send, {Delete}
	SelectNone()
	LayerMergeDown()
	AlphaSelectionToChannel()
	SelectNone()
	LayerActivate()


	; SURFACE SETUP
	; curves
	file = %texture%_CURVE.png
	SelectFile(file)
	Sleep, 500
	Click
	CopyClosePasteFile()
	Send, {LControl Down}{LShift Down}{n}{LControl Up}{LShift Up} 

	ChannelToSelection()
	LayerActivate()
	Send, {Delete}
	SelectNone()
	LayerBoundarySize(106, 106, 0, -150)

	PasteAsNewLayer()
	Send, {LAlt Down}{l}{LAlt Up}{t}{c}
	ChannelToSelection()
	LayerActivate()
	Send, {Delete}
	SelectNone()
	LayerBoundarySize(106, 106, 0, 0)

	PasteAsNewLayer()
	Send, {LAlt Down}{l}{LAlt Up}{t}{1}
	ChannelToSelection()
	LayerActivate()
	Send, {Delete}
	SelectNone()
	LayerBoundarySize(106, 106, -150, 0)

	PasteAsNewLayer()
	Send, {LAlt Down}{l}{LAlt Up}{t}{w}
	ChannelToSelection()
	LayerActivate()
	Send, {Delete}
	SelectNone()
	LayerBoundarySize(106, 106, -150, -150)

	Loop, 4{
		LayerMergeDown()
	}
	AlphaSelectionToChannel()
	SelectNone()

	; ortho
	file = %texture%.png
	SelectFile(file)
	Sleep, 500
	Click
	SelectAllAndCopy()
	closeFile()
	LayerActivate()
	PasteAsNewLayer()
	
	ChannelToSelection()
	LayerActivate()
	Send, {Delete}
	SelectNone()
	LayerBoundarySize(44, 256, -106, 0)
	LayerActivate()
	PasteAsNewLayer()
	Send, {LAlt Down}{l}{LAlt Up}{t}{c}
	ChannelToSelection()
	LayerActivate()
	Send, {Delete}
	SelectNone()
	LayerBoundarySize(256, 44, 0, -106)

	textureIID := FourWays[1]
	Clipboard := WealthDefs[texture]
	iid := Wealth(textureIID)	
	Sleep, 100
	ExportTile(iid)		
	Sleep, 100

}