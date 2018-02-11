#Include %A_ScriptDir%\STARTUP - Gimp.ahk 


Loop, %RenderSet% {

	texture := TextDefs[A_Index]

	; TRACKS
	file = %texture%_DO1.png
	SelectFile(file)
	Sleep, 500
	Click

	file = Street_Tracks_alpha_DO1.png
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
	Sleep, 100
	SelectNone()


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
	Sleep, 100
	Send, {LAlt Down}{l}{LAlt Up}{t}{1}
	Sleep, 100

	ChannelToSelection()
	LayerActivate()
	Send, {Delete}
	SelectNone()
	LayerMergeDown()
	AlphaSelectionToChannel()
	SelectNone()
	LayerActivate()
	PasteAsNewLayer()
	Send, {LAlt Down}{l}{LAlt Up}{t}{w}
	Sleep, 100

	Send, {LAlt Down}{t}{LAlt Up}{t}{h}
	Sleep, 100
	Send, {Numpad6}{Numpad4}
	Sleep, 100
	Send, {LAlt Down}{s}{LAlt Up}
	Sleep, 100
	Send,  {LAlt Down}{l}{LAlt Up}{i}
	Sleep, 100	
	Send, {m}
	ChannelToSelection()
	LayerActivate()
	Send, {Delete}
	SelectNone()
	LayerMergeDown()
	AlphaSelectionToChannel()


	; SURFACE
	file = %texture%_DO1.png
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
	LayerBoundarySize(156, 256, 0, 0)


	file = %texture%_CURVE.png
	SelectFile(file)
	Sleep, 500
	Click
	CopyClosePasteFile()
	Send, {LControl Down}{LShift Down}{n}{LControl Up}{LShift Up} 
	Sleep, 100
	Send,  {LAlt Down}{l}{LAlt Up}{t}{1}
	ChannelToSelection()
	LayerActivate()
	Send, {Delete}
	SelectNone()
	LayerBoundarySize(100, 128, -156, 0)

	PasteAsNewLayer()	
	Send, {LAlt Down}{l}{LAlt Up}{t}{w}
	Sleep, 100

	Send, {LAlt Down}{t}{LAlt Up}{t}{h}
	Sleep, 100
	Send, {Numpad6}{Numpad4}
	Sleep, 100
	Send, {LAlt Down}{s}{LAlt Up}
	Sleep, 100
	Send,  {LAlt Down}{l}{LAlt Up}{i}
	Sleep, 100	
	Send, {m}
	ChannelToSelection()
	LayerActivate()
	Send, {Delete}
	SelectNone()
	LayerBoundarySize(100, 128, -156, -128)

	textureIID := ThreeWays[2]
	Clipboard := WealthDefs[texture]
	iid := Wealth(textureIID)	
	Sleep, 100
	ExportTile(iid)		
	Sleep, 100

	}