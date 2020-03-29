;// Custom AHK (AutoHotKey) script v0.1 
;// March 30, 2018
;// cvelth <cvelth.mail@gmail.com>
;// Licenced under "Unlicense", see <https://unlicense.org>

#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance off

;/* Additional mouse key remap */
XButton1::sendInput {RWin down} ;// Mouse x1 -> Right Windows Key
XButton1 Up::sendInput {RWin up}

XButton2::sendInput {Enter down} ;// Mouse x2 -> Enter Key
XButton2 Up::sendInput {Enter up}

AppsKey::sendEvent {RAlt down}{Tab}{RAlt up} ;// Apps key -> AltTab

;/* Virtual desktop control */
#WheelUp::sendInput {LWin down}{LCtrl down}{Left}{LWin up}{LCtrl up} ;// switch to previous desktop
#WheelDown::sendInput {LWin down}{LCtrl down}{Right}{LWin up}{LCtrl up} ;// switch to next desktop
#MButton::sendInput {LWin down}{LCtrl down}{d}{LWin up}{LCtrl up} ;// new Desktop
#RButton::sendInput {LWin down}{LCtrl down}{f4}{LWin up}{LCtrl up} ;// remove Desktop

;/* Compatibility issue fix */
XButton1 & WheelUp::sendInput {LWin down}{LCtrl down}{Left}{LWin up}{LCtrl up}  ;// switch to previous desktop
XButton1 & WheelDown::sendInput {LWin down}{LCtrl down}{Right}{LWin up}{LCtrl up} ;// switch to next desktop
XButton1 & MButton::sendInput {LWin down}{LCtrl down}{d}{LWin up}{LCtrl up} ;// new Desktop
XButton1 & RButton::sendInput {LWin down}{LCtrl down}{f4}{LWin up}{LCtrl up} ;// remove Desktop

return