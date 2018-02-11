#SingleInstance force
#NoEnv
#Warn
#Include %A_ScriptDir%\config.ahk 

Run, C:\Program Files (x86)\GoFSH Package\GoFSH.exe, %WorkDir%, Max




Sleep, 100
Send, {LShift Down}{Tab}{Tab}{LShift Up}{Down}{Down}{Enter}
Sleep, 100
Send, {Tab}{Enter}
Sleep, 100
Send, 0x5E5B2204-C0.png
Sleep, 100


WinActivate
Sleep, 100
Click, 771, 25 Left, , Down
Sleep, 100
Click, 771, 25 Left, , Up
Sleep, 100
Send, {Enter}
WinActivate
Sleep, 1000
Send, {Tab}{Enter}{Enter}
WinActivate
Sleep, 1000
Send, {y}
WinActivate
Sleep, 1000
Send, {Tab}{Enter}{LAlt Down}{F4}
WinActivate
Sleep, 333
Send, {LAlt Up}

Click, 551, 151 Left, , Down
Sleep, 50
Click, 551, 151 Left, , Up
Sleep, 50
Click, 260, 329 Left, , Down
Sleep, 50
Click, 260, 329 Left, , Up
Sleep, 50
Send, 7AB50E44-1ABE787D-5E5B2204-C0.bmp
Sleep, 50
Send, {Enter}
Sleep, 333
Click, 555, 533 Left, , Down
Sleep, 10
Click, 555, 533 Left, , Up
Sleep, 10
Click, 616, 629 Left, , Down
Sleep, 10
Click, 616, 628 Left, , Up

Sleep, 6000 ; quick n dirty, this wil lvary greatly depening on number of files, script need to properly be waiting here

Sleep, 10
Click, 465, 363 Left, , Down
Sleep, 10
Click, 465, 363 Left, , Up
Sleep, 10
WinActivate, FSHxDAT  Package Manager ahk_class WindowsForms10.Window.8.app.0.378734a
Sleep, 333
Click, 592, 585 Left, , Down
Sleep, 100
Click, 592, 585 Left, , Up
Sleep, 100
Send, _ReaderLoadList.txt
Sleep, 100
Send, {Enter}

Sleep, 3000

Send, test_4way.dat
Sleep, 100
Send, {Enter}
Sleep, 5000
Send, {Tab}{Enter}
Sleep, 5000
Send, {LAlt Down}
WinActivate
Sleep, 333
Send, {F4}{LAlt Up}{LAlt Down}{F4}
WinActivate
Sleep, 333
Send, {LAlt Up}