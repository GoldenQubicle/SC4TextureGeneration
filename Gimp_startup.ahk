#SingleInstance force
#NoEnv
#Warn
#Include %A_ScriptDir%\config.ahk 

Run, "C:\Program Files\GIMP 2\bin\gimp-2.8.exe" -f, %WorkDir%, Max

Sleep, 5000
WinActivate, GNU Image Manipulation Program ahk_class gdkWindowToplevel

Send, {LControl Down}{o}{LControl Up}
WinActivate, Open Image ahk_class gdkWindowToplevel
Sleep, 333
Send, {Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Down}{Right}
Sleep, 100

