#SingleInstance force
#NoEnv
#Warn
#Include %A_ScriptDir%\config.ahk 

Run, C:\Program Files (x86)\GoFSH Package\GoFSH.exe, %WorkDir%, Max


Sleep, 100
Send, {LShift Down}{Tab}{Tab}{LShift Up}{Down}{Down}{Enter}
Sleep, 100

Send, {Tab}{Enter}
Sleep, 50
Send, 0x5E5B5214-C0.png
Sleep,50


WinActivate, Select Bitmap or PNG File To Load ahk_class #32770
Sleep, 333
Click, 771, 25 Left, , Down
Sleep, 10
Click, 771, 25 Left, , Up
Sleep, 10
Send, {Enter}
WinActivate, BMPxPNG  Image Format Converter for SC4 Textures ahk_class WindowsForms10.Window.8.app.0.378734a
Sleep, 333
Send, {Tab}{Enter}{Enter}
WinActivate, Select directory for where to save - filename is fixed ahk_class #32770
Sleep, 333
Send, {y}
WinActivate, BMPxPNG  Image Format Converter for SC4 Textures ahk_class WindowsForms10.Window.8.app.0.378734a
Sleep, 333
Send, {Tab}{Enter}{LAlt Down}{F4}
WinActivate, GoFSH v3.3.5.51A3 --- ©2009-17 R. van Tilburg (rivit) ahk_class WindowsForms10.Window.8.app.0.378734a
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
Send, 7AB50E44-1ABE787D-5E5B5214-C0.bmp
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

Sleep, 45000 ; quick n dirty, this wil lvary greatly depening on number of files, script need to properly be waiting here

Sleep, 10
Click, 465, 363 Left, , Down
Sleep, 10
Click, 465, 363 Left, , Up
Sleep, 10
WinActivate, FSHxDAT  Package Manager ahk_class WindowsForms10.Window.8.app.0.378734a
Sleep, 333
Click, 592, 585 Left, , Down
Sleep, 10
Click, 592, 585 Left, , Up
Sleep, 10
Send, _ReaderLoadList.txt
Sleep, 50
Send, {Enter}
Sleep, 500
Send, test3.dat
Sleep, 50
Send, {Enter}
Sleep, 50
Send, {Tab}{Enter}
Sleep, 50
Send, {LAlt Down}
WinActivate
Sleep, 333
Send, {F4}{LAlt Up}{LAlt Down}{F4}
WinActivate
Sleep, 333
Send, {LAlt Up}