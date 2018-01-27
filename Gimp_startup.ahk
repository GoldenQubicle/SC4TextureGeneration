#SingleInstance force
#NoEnv
#Warn
#Include %A_ScriptDir%\config.ahk 

Run, "C:\Program Files\GIMP 2\bin\gimp-2.8.exe" -f, %WorkDir%, Max
WinMaximize  

Sleep, 5000
WinActivate, GNU Image Manipulation Program ahk_class gdkWindowToplevel
Sleep, 100
Send, {LControl Down}{o}{LControl Up}
Sleep, 100
Send, {Down}
Sleep, 100