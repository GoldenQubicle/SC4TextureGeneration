#Include %A_ScriptDir%\STARTUP - Gimp.ahk 


Loop, %RenderSet% {

	texture := TextDefs[A_Index]
	
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
	SelectAllAndCopy()
	PasteAsNewLayer()
	Send, {LAlt Down}{l}{LAlt Up}{t}{c}
	Sleep, 100
	ChannelToSelection()
	LayerActivate()
	Send, {Delete}
	SelectNone()
	LayerMergeDown()
	AlphaSelectionToChannel()

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
	LayerActivate()
	SelectAllAndCopy()
	closeFile()
	LayerActivate()
	PasteAsNewLayer()
	ChannelToSelection()
	LayerActivate()
	Send, {Delete}
	SelectNone()
	LayerMergeDown()
	AlphaSelectionToChannel()
	LayerActivate()

	; surface curve
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
	LayerBoundarySize(256, 128, 0, -128)

	file = %texture%_CURVE.png
	SelectFile(file)
	Sleep, 500
	Click
	CopyClosePasteFile()
	Send, {LControl Down}{LShift Down}{n}{LControl Up}{LShift Up} 
	Sleep, 100
	Send, {LAlt Down}{l}{LAlt Up}{t}{c}
	Sleep, 100
	ChannelToSelection()
	LayerActivate()
	Send, {Delete}
	SelectNone()
	LayerBoundarySize(256, 128, 0, 0)
	LayerMergeDown()
	LayerBoundarySize(128, 256, 0, 0)

	; surface ortho
	file = %texture%.png
	SelectFile(file)
	Sleep, 500
	Click
	CopyClosePasteFile()
	Send, {LControl Down}{LShift Down}{n}{LControl Up}{LShift Up} 
	Sleep, 100
	ChannelToSelection()
	LayerActivate()
	Send, {Delete}
	SelectNone()
	LayerBoundarySize(128, 256, -128, 0)

	Send, {LAlt Down}{i}{LAlt Up}{t}{h}
	Sleep, 100

	textureIID := ThreeWays[1]
	Clipboard := WealthDefs[texture]
	iid := Wealth(textureIID)	
	Sleep, 100
	ExportTile(iid)		
	Sleep, 100

}


