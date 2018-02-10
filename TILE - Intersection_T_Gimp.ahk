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

	; ChannelToSelection()
	; LayerActivate()
	; Send, {Delete}
	; SelectNone()
	; LayerBoundarySize(256, 128, 0, -128)

	; file = %texture%_CURVE.png
	; SelectFile(file)
	; Sleep, 500
	; Click
	; CopyClosePasteFile()
	; Send, {LControl Down}{LShift Down}{n}{LControl Up}{LShift Up} 
	; Sleep, 100
	; Send, {LAlt Down}{l}{LAlt Up}{t}{c}
	; Sleep, 100
	; ChannelToSelection()
	; LayerActivate()
	; Send, {Delete}
	; SelectNone()
	; LayerBoundarySize(256, 128, 0, 0)

}


LayerBoundarySize(LayerWidth, LayerHeight, OffSet_x, OffSet_y ){
	Sleep, 100
	Send, {LAlt Down}{l}{LAlt Up}
	Loop, 5{
		Sleep, 100
		Send, {Up}
	}
	Send, {Enter}
	Sleep, 100
	Send, %LayerWidth%
	Sleep, 100
	Send, {Tab}{Tab}
	Sleep, 100
	Send, %LayerHeight%
	Sleep, 100
	Send, {Tab}{Tab}
	Sleep, 100
	Send, %OffSet_x%
	Sleep, 100
	Send, {Tab}
	Sleep, 100
	Send, %OffSet_y%
	Sleep, 100
	Send, {LAlt Down}{r}{LAlt Up}{Right}{Enter}
	Sleep, 100
	Send, {LAlt Down}{l}{LAlt Up}{i}
	Sleep, 100
}

LayerMergeDown(){
	Sleep, 100
	Send, {LAlt Down}{l}{LAlt Up}{w}
	Sleep, 100
}

SelectNone(){
	Sleep, 100
	Send, {LControl Down}{LShift Down}{a}{LControl Up}{LShift Up} 	
	Sleep, 100
}

ChannelToSelection(){
	Sleep, 100
	Click, 102, 841 Right, , Down
	Sleep, 100
	Click, 102, 841 Right, , Up
	Sleep, 100
	Send, {c}
	Sleep, 100
}

SelectAllAndCopy(){
	Sleep, 100
	Send, {LControl Down}{a}{LControl Up}
	Sleep, 100
	Send, {LControl Down}{c}{LControl Up}
	Sleep, 100
}

PasteAsNewLayer(){
	Sleep, 100
	Send, {LControl Down}{v}{LControl Up}
	Sleep, 100
	Send, {LControl Down}{LShift Down}{n}{LControl Up}{LShift Up} 	
	Sleep, 100

}

CopyClosePasteFile(){
	SelectAllAndCopy()
	closeFile()
	Send, {LControl Down}{v}{LControl Up}
	Sleep, 100
}

AlphaSelectionToChannel(){
	Sleep, 100
	Send, {LAlt Down}{l}{LAlt Up}{a}{p}
	Sleep, 100
	Send, {LAlt Down}{s}{LAlt Up}{c}
	SelectNone()
}

LayerDelete(){
	Sleep, 100
	Send, {LAlt Down}{l}{LAlt Up}{d}
	Sleep, 100
}

LayerActivate(){
	Sleep, 100
	Click, 1509, 184 Left, , Down
	Sleep, 10
	Click, 1509, 184 Left, , Up
	Sleep, 100
}