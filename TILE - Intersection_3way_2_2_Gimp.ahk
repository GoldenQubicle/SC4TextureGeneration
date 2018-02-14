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
	Send, {LAlt Down}{i}{LAlt Up}{t}{h}
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

	; ; curves
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

	Send, {LAlt Down}{l}{LAlt Up}{t}{1}
	Shear(0,64)
	LayerBoundarySize(240, 240, 0, -10)
	LayerMergeDown()
	ChannelToSelection()
	LayerActivate()
	Send, {Delete}
	Sleep, 100
	SelectNone()
	LayerMergeDown()
	AlphaSelectionToChannel()
	LayerActivate()
	PasteAsNewLayer()
	Send, {LAlt Down}{l}{LAlt Up}{t}{w}
	Shear(-64,0)
	Sleep, 100
	Shear(0,64)
	Sleep, 100
	
	ChannelToSelection()
	LayerActivate()
	Send,{Delete}
	Sleep, 100
	SelectNone()
	LayerBoundarySize(172, 250, -64, 0)

 	LayerMergeDown()
 	AlphaSelectionToChannel()
 	LayerActivate()

 	; SURFACE
 	; curves
	file = %texture%_CURVE.png
	Sleep, 350
	SelectFile(file)
	Sleep, 350
	Click
	CopyClosePasteFile()
	Send, {LControl Down}{LShift Down}{n}{LControl Up}{LShift Up} 	
	Sleep, 100
	Send, {LAlt Down}{l}{LAlt Up}{t}{w}
	Shear(-64,0)
	Sleep, 100
	Shear(0,64)
	Sleep, 100
	ChannelToSelection()
	LayerActivate()
	Send,{Delete}
	Sleep, 100
	SelectNone()
	LayerBoundarySize(100, 120, -140, -120)

	PasteAsNewLayer()
	Sleep, 100
	Send, {LAlt Down}{l}{LAlt Up}{t}{1}
	Shear(0,64)
	ChannelToSelection()
	LayerActivate()
	Send,{Delete}
	Sleep, 100
	SelectNone()
	LayerBoundarySize(100, 104, -140, -16)

 	; dia stubs
 	file = %texture%_DO1.png
	Sleep, 350
	SelectFile(file)
	Sleep, 350
	Click
	CopyClosePasteFile()
	Send, {LControl Down}{LShift Down}{n}{LControl Up}{LShift Up} 	
	Sleep, 100
	Send, {LAlt Down}{l}{LAlt Up}{t}{h}
	ChannelToSelection()
	LayerActivate()
	Send,{Delete}
	Sleep, 100
	SelectNone()
	LayerBoundarySize(256, 16, 0, -240)

	PasteAsNewLayer()
	Send, {LAlt Down}{l}{LAlt Up}{t}{h}
	Sleep, 100
	Send, {LAlt Down}{l}{LAlt Up}{t}{w}
	ChannelToSelection()
	LayerActivate()
	Send,{Delete}
	Sleep, 100
	SelectNone()
	LayerBoundarySize(16, 256, -240, 0 )

	PasteAsNewLayer()
	Send, {LAlt Down}{l}{LAlt Up}{t}{h}
	Sleep, 100
	ChannelToSelection()
	LayerActivate()
	Send,{Delete}
	Sleep, 100
	SelectNone()
	LayerBoundarySize(140, 240, 0, 0 )

	PasteAsNewLayer()
	Send, {LAlt Down}{l}{LAlt Up}{t}{h}
	Sleep, 100
	ChannelToSelection()
	LayerActivate()
	Send,{Delete}
	Sleep, 100
	SelectNone()
	LayerBoundarySize(100, 16, -140, 0 )

	textureIID := ThreeWays[4]
	Clipboard := WealthDefs[texture]
	iid := Wealth(textureIID)	
	Sleep, 100
	ExportTile(iid)		
	Sleep, 100


}