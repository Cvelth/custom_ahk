﻿;// Custom AHK (AutoHotKey) script v1.2
;// August 24, 2018
;// cvelth <cvelth.mail@gmail.com>
;// Licenced under "Unlicense", see <https://unlicense.org>

#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance off

;/* Program Launch */
#z::run calc.exe ;// Windows Calculator on Win+z
#c::run cmd ;// Command Line on Win+c

;/* Virtual desktop control */
#WheelUp::sendInput {LWin down}{LCtrl down}{Left}{LWin up}{LCtrl up} ;// switch to previous desktop
#WheelDown::sendInput {LWin down}{LCtrl down}{Right}{LWin up}{LCtrl up} ;// switch to next desktop
#MButton::sendInput {LWin down}{LCtrl down}{d}{LWin up}{LCtrl up} ;// new Desktop
#RButton::sendInput {LWin down}{LCtrl down}{f4}{LWin up}{LCtrl up} ;// remove Desktop
    ;// Alternative
^z::sendInput {LWin down}{LCtrl down}{Left}{LWin up}{LCtrl up} ;// switch to previous desktop
#^x::sendInput {LWin down}{LCtrl down}{Right}{LWin up}{LCtrl up} ;// switch to next desktop

;/* Additional mouse key remap */
XButton1::sendInput {RWin down} ;// Mouse x1 -> Right Windows Key
XButton1 Up::sendInput {RWin up}

XButton2::sendInput {Enter down} ;// Mouse x2 -> Enter Key
XButton2 Up::sendInput {Enter up}

AppsKey::sendEvent {RAlt down}{Tab}{RAlt up} ;// Apps key -> AltTab


;/* Compatibility issue fix */
XButton1 & z:: run calc.exe ;// Windows Calculator on Win+z
XButton1 & c:: run cmd ;// Command Line on Win+c

XButton1 & WheelUp::sendInput {LWin down}{LCtrl down}{Left}{LWin up}{LCtrl up} ;// switch to previous desktop
XButton1 & WheelDown::sendInput {LWin down}{LCtrl down}{Right}{LWin up}{LCtrl up} ;// switch to next desktop
XButton1 & MButton::sendInput {LWin down}{LCtrl down}{d}{LWin up}{LCtrl up} ;// new Desktop
XButton1 & RButton::sendInput {LWin down}{LCtrl down}{f4}{LWin up}{LCtrl up} ;// remove Desktop

RWin & WheelUp::sendInput {LWin down}{LCtrl down}{Left}{LWin up}{LCtrl up} ;// switch to previous desktop
RWin & WheelDown::sendInput {LWin down}{LCtrl down}{Right}{LWin up}{LCtrl up} ;// switch to next desktop
RWin & MButton::sendInput {LWin down}{LCtrl down}{d}{LWin up}{LCtrl up} ;// new Desktop
RWin & RButton::sendInput {LWin down}{LCtrl down}{f4}{LWin up}{LCtrl up} ;// remove Desktop

return