#Include %A_ScriptDir%\STARTUP - Gimp.ahk 


Loop, %RenderSet% {

	texture := TextDefs[A_Index]

	; ; TRACKS
	; ; ortho
	; file = %texture%.png
	; SelectFile(file)
	; Sleep, 250
	; Click

	; file = Street_Tracks_alpha.png	
	; SelectFile(file)
	; Sleep, 500
	; Click

	; CopyClosePasteFile()
	; Send, {LControl Down}{LShift Down}{n}{LControl Up}{LShift Up} 	

	; AlphaSelectionToChannel()
	; LayerActivate()
	; LayerDelete()
	; ChannelToSelection()
	; LayerActivate()
	; Send, {LAlt Down}{s}{LAlt Up}{i}{Delete}
	; Sleep, 100
	; SelectNone()


	; ; curve
	; file = %texture%_CURVE.png
	; SelectFile(file)
	; Sleep, 500
	; Click
	; Sleep, 500

	; file = Street_Tracks_alpha_Bent.png	
	; SelectFile(file)
	; Sleep, 500
	; Click
	; Sleep, 500

	; CopyClosePasteFile()
	; Send, {LControl Down}{LShift Down}{n}{LControl Up}{LShift Up} 
	; LayerActivate()
	; AlphaSelectionToChannel()
	; LayerActivate()
	; LayerDelete()
	; ChannelToSelection()
	; LayerActivate()
	; Send, {LAlt Down}{s}{LAlt Up}{i}{Delete}
	; Sleep, 100
	; SelectNone()

	; SelectAllAndCopy()
	; PasteAsNewLayer()
	; SelectNone()
	; Send, {LAlt Down}{l}{LAlt Up}{t}{c}
	; Sleep, 100
	; ChannelToSelection()
	; LayerActivate()
	; Send, {Delete}
	; SelectNone()
	; LayerMergeDown()
	; Send, {LAlt Down}{l}{LAlt Up}{t}{h}
	; CopyClosePasteFile()
	; Send, {LControl Down}{LShift Down}{n}{LControl Up}{LShift Up} 
	; Shear(0,-64)

	; ChannelToSelection()
	; LayerActivate()
	; Send, {Delete}
	; SelectNone()
	; LayerBoundarySize(232,256,0,0)


	; ; curved stub
	; file = %texture%_DO1.png
	; SelectFile(file)
	; Sleep, 500
	; Click
	; Sleep, 500

	; file = Street_Tracks_alpha_DO1.png	
	; SelectFile(file)
	; Sleep, 500
	; Click
	; Sleep, 500

	; CopyClosePasteFile()
	; Send, {LControl Down}{LShift Down}{n}{LControl Up}{LShift Up} 
	; LayerActivate()
	; AlphaSelectionToChannel()
	; LayerActivate()
	; LayerDelete()
	; ChannelToSelection()
	; LayerActivate()
	; Send, {LAlt Down}{s}{LAlt Up}{i}{Delete}
	; Sleep, 100
	; SelectNone()
	; CopyClosePasteFile()
	; Send, {LControl Down}{LShift Down}{n}{LControl Up}{LShift Up} 
}


Shear(mag_x, mag_y){
	Sleep, 100
	Send, {LAlt Down}{t}{LAlt Up}{t}{h}
	Sleep, 100
	Send, %mag_x% 
	Sleep, 100
	Send, {Tab}
	Sleep, 100
	Send, %mag_y%
	Sleep, 100
	Send, {LAlt Down}{s}{LAlt Up}
	Sleep, 100
	Send, {LAlt Down}{l}{LAlt Up}{i}
	Sleep, 100


}