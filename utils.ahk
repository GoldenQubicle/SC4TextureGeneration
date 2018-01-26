
GetSelectedFileName(){
Sleep, 50
Clipboard = 
Sleep, 50
Send, ^c
Sleep, 50
return Clipboard
}

SelectFile(texture){
Loop
{	
		name := GetSelectedFileName()
		IfInString, name, %texture%
		{
			Send, {Enter}
			break
		} else {
			Sleep, 50
			Send, {Right} 
			Continue
		}
	}
}