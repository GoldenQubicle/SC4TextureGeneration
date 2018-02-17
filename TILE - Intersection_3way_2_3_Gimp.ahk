#Include %A_ScriptDir%\STARTUP - Gimp.ahk 


Loop, %RenderSet% {
	Send, {m}
	Sleep, 100
	texture := TextDefs[A_Index]

	file = %texture%_DO1.png
	Sleep, 350
	SelectFile(file)
	Sleep, 350
	Click

	file = Street_Tracks_alpha_DO1.png	
	Sleep, 350
	SelectFile(file)
	Sleep, 350
	Click

	CopyClosePasteFile()
	Send, {LControl Down}{LShift Down}{n}{LControl Up}{LShift Up} 	
	Sleep, 100
	AlphaSelectionToChannel()
	LayerActivate()
	LayerDelete()
	ChannelToSelection()
	LayerActivate()
	Send, {LAlt Down}{s}{LAlt Up}{i}{Delete}
	Sleep, 100
	SelectNone()

	SelectAllAndCopy()
	PasteAsNewLayer()
	Send, {LAlt Down}{l}{LAlt Up}{t}{w}
	LayerBoundarySize(16,256,-240,0)
	LayerMergeDown()
	AlphaSelectionToChannel()
	LayerActivate()

	; curves
	; ~~REFACTOR INTO EXTRACT TRACKS~~
	file = %texture%_CURVE.png
	Sleep, 350
	SelectFile(file)
	Sleep, 350
	Click
	Sleep, 500
	file = Street_Tracks_alpha_Bent.png	
	Sleep, 350
	SelectFile(file)
	Sleep, 350
	Click

	CopyClosePasteFile()
	Send, {LControl Down}{LShift Down}{n}{LControl Up}{LShift Up} 	

	AlphaSelectionToChannel()
	LayerActivate()
	LayerDelete()
	ChannelToSelection()
	LayerActivate()
	Send,{LAlt Down}{s}{LAlt Up}{i}{Delete}
	Sleep, 100
	SelectNone()
	SelectAllAndCopy()
	closeFile()
	LayerActivate()
	PasteAsNewLayer()
	; ~~REFACTOR INTO EXTRACT TRACKS~~


	Send,{LAlt Down}{l}{LAlt Up}{t}{h}
	Shear(64,0)
	Shear(0,-64)
	ChannelToSelection()
	LayerActivate()
	Send, {Delete}
	SelectNone()
	LayerBoundarySize(240,240,-0,0)
	LayerMergeDown()
	AlphaSelectionToChannel()
	LayerActivate()

	PasteAsNewLayer()
	Send, {LAlt Down}{l}{LAlt Up}{t}{1}
	Shear(0,-64)
	ChannelToSelection()
	LayerActivate()
	Send, {Delete}
	SelectNone()
	LayerBoundarySize(240,240,0,-16)
	LayerMergeDown()
	AlphaSelectionToChannel()
	LayerActivate()

	; SURFACE
	file = %texture%_CURVE.png
	Sleep, 350
	SelectFile(file)
	Sleep, 350
	Click
	CopyClosePasteFile()
	Send, {LControl Down}{LShift Down}{n}{LControl Up}{LShift Up} 	
	Sleep, 100
	Send,{LAlt Down}{l}{LAlt Up}{t}{h}
	Shear(64,0)
	Shear(0,-64)
	ChannelToSelection()
	LayerActivate()
	Send, {Delete}
	SelectNone()
	LayerBoundarySize(100,120,-140,-110)

	PasteAsNewLayer()
	Send, {LAlt Down}{l}{LAlt Up}{t}{1}
	Shear(0,-64)

	LayerOffset(-10,0)

	ChannelToSelection()
	LayerActivate()
	Send, {Delete}
	SelectNone()
	LayerBoundarySize(100,94,-140,-16)
	LayerActivate()

	file = %texture%_DO1.png
	Sleep, 350
	SelectFile(file)
	Sleep, 350
	Click
	CopyClosePasteFile()
	Send, {LControl Down}{LShift Down}{n}{LControl Up}{LShift Up} 	
	Sleep, 100

	Send, {LAlt Down}{l}{LAlt Up}{t}{w}
	LayerBoundarySize(16,256,-240,0)
	ChannelToSelection()
	LayerActivate()
	Send, {Delete}
	SelectNone()

	PasteAsNewLayer()
	LayerBoundarySize(256,16, 0,0)
	ChannelToSelection()
	LayerActivate()
	Send, {Delete}
	SelectNone()

	PasteAsNewLayer()
	LayerBoundarySize(256,26, 0, -230)
	ChannelToSelection()
	LayerActivate()
	Send, {Delete}
	SelectNone()

	PasteAsNewLayer()
	LayerBoundarySize(140,214, 0, -16)
	ChannelToSelection()
	LayerActivate()
	Send, {Delete}
	SelectNone()


	textureIID := ThreeWays[5]
	Clipboard := WealthDefs[texture]
	iid := Wealth(textureIID)	
	Sleep, 100
	ExportTile(iid)		
	Sleep, 100
}	





