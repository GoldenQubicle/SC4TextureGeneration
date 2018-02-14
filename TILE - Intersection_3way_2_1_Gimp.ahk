#Include %A_ScriptDir%\STARTUP - Gimp.ahk 


Loop, %RenderSet% {

	texture := TextDefs[A_Index]

	; ; TRACKS
	; ortho
	file = %texture%.png
	Sleep, 750
	SelectFile(file)
	Sleep, 750
	Click

	file = Street_Tracks_alpha.png	
	Sleep, 750
	SelectFile(file)
	Sleep, 750
	Click

	CopyClosePasteFile()
	Send, {LControl Down}{LShift Down}{n}{LControl Up}{LShift Up} 	

	AlphaSelectionToChannel()
	LayerActivate()
	LayerDelete()
	ChannelToSelection()
	LayerActivate()
	Send, {LAlt Down}{s}{LAlt Up}{i}{Delete}
	Sleep, 100
	SelectNone()


	; curve
	file = %texture%_CURVE.png
	Sleep, 750
	SelectFile(file)
	Sleep, 750
	Click
	Sleep, 750

	file = Street_Tracks_alpha_Bent.png	
	Sleep, 750
	SelectFile(file)
	Sleep, 750
	Click
	Sleep, 750

	CopyClosePasteFile()
	Send, {LControl Down}{LShift Down}{n}{LControl Up}{LShift Up} 
	LayerActivate()
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
	SelectNone()
	Send, {LAlt Down}{l}{LAlt Up}{t}{c}
	Sleep, 100
	ChannelToSelection()
	LayerActivate()
	Send, {Delete}
	SelectNone()
	LayerMergeDown()
	Send, {LAlt Down}{l}{LAlt Up}{t}{h}
	CopyClosePasteFile()
	Send, {LControl Down}{LShift Down}{n}{LControl Up}{LShift Up} 
	Shear(0,-64)

	ChannelToSelection()
	LayerActivate()
	Send, {Delete}
	SelectNone()
	LayerBoundarySize(240,256,0,0)


	; curved stub
	file = %texture%_DO1.png
	Sleep, 750
	SelectFile(file)
	Sleep, 750
	Click
	Sleep, 750

	file = Street_Tracks_alpha_DO1.png	
	Sleep, 750
	SelectFile(file)
	Sleep, 750
	Click
	Sleep, 750

	CopyClosePasteFile()
	Send, {LControl Down}{LShift Down}{n}{LControl Up}{LShift Up} 
	LayerActivate()
	AlphaSelectionToChannel()
	LayerActivate()
	LayerDelete()
	ChannelToSelection()
	LayerActivate()
	Send, {LAlt Down}{s}{LAlt Up}{i}{Delete}
	Sleep, 100
	SelectNone()
	CopyClosePasteFile()
	Send, {LControl Down}{LShift Down}{n}{LControl Up}{LShift Up} 

	Send, {LAlt Down}{l}{LAlt Up}{t}{w}
	Sleep, 100
	LayerBoundarySize(16,256,-240,0)
	LayerMergeDown()
	LayerMergeDown()
	AlphaSelectionToChannel()


	; SURFACE
	; curve
	file = %texture%_CURVE.png
	Sleep, 750
	SelectFile(file)
	Sleep, 750
	Click
	Sleep, 750
	SelectAllAndCopy()
	closeFile()
	LayerActivate()
	PasteAsNewLayer()
	Sleep, 100
	
	LayerActivate()
	LayerBoundarySize(128,128,0,-128)
	PasteAsNewLayer()
	Send, {LAlt Down}{l}{LAlt Up}{t}{c}
	Sleep, 100
	LayerBoundarySize(128,128,0,0)
	LayerMergeDown()
	Send, {LAlt Down}{l}{LAlt Up}{t}{h}
	Sleep, 100
	Shear(0,-64)

	ChannelToSelection()
	LayerActivate()
	Send, {Delete}
	Sleep, 100
	SelectNone()
	LayerBoundarySize(100,230,-156,-10)


	; ; ortho
	file = %texture%.png
	Sleep, 750
	SelectFile(file)
	Sleep, 750
	Click
	Sleep, 750
	SelectAllAndCopy()
	closeFile()
	LayerActivate()
	PasteAsNewLayer()
	Sleep, 100
	ChannelToSelection()
	LayerActivate()
	Send, {Delete}
	Sleep, 100
	SelectNone()
	LayerBoundarySize(156,256,0,0)

	PasteAsNewLayer()
	ChannelToSelection()
	LayerActivate()
	Send, {Delete}
	Sleep, 100
	SelectNone()
	LayerBoundarySize(100,10,-156,0)
	
	PasteAsNewLayer()
	ChannelToSelection()
	LayerActivate()
	Send, {Delete}
	Sleep, 100
	SelectNone()
	LayerBoundarySize(100,16,-156,-240)

	textureIID := ThreeWays[3]
	Clipboard := WealthDefs[texture]
	iid := Wealth(textureIID)	
	Sleep, 100
	ExportTile(iid)		
	Sleep, 100

}


