;// Custom AHK (AutoHotKey) script v1.3.3
;// November 3, 2018
;// cvelth <cvelth.mail@gmail.com>
;// Licenced under "Unlicense", see <https://unlicense.org>

;// Special comments
;D is used to mark [[deprecated]] in this version script segments 

#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance off


;/* Program Launch */
#z:: run calc.exe 
    ;// Windows Calculator on Win+z
#c:: run cmd 
    ;// Command Line on Win+c
#v:: run vivaldi 
    ;// Vivaldi Browser on Win+v

#F1:: run vivaldi
    ;// Vivaldi Browser on Win+F1
#F2:: run "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Visual studio 2017"
    ;// Visual Studio 2017 on Win+F2

#F5:: run "C:\Users\Cvelth\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Telegram"
    ;// Telegram on Win+F5
#F6:: run explorer.exe shell:AppsFolder\32064Takoboto.TakobotoJapaneseDictionary_9b12gkevbv5ht!App
    ;// Takoboto on Win+F6
#F7:: run "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Photoshop CC 2019"
    ;// Adobe Photoshop CC 2019 on Win+F7
#F8:: run explorer.exe shell:AppsFolder\22490Automattic.Simplenote_9h07f78gwnchp!Simplenote
    ;// Simplenote on Win+F8

#F10:: run explorer.exe shell:AppsFolder\LastPass.LastPass_qq0fmhteeht3j!App
    ;// LastPass on Win+F10
#F11:: run "C:\Users\Cvelth\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Control Panel"
    ;// Control Panel on Win+F11
#F12:: run "C:\Users\Cvelth\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Monosnap"
    ;// Monosnap on Win+F12


;/* Media control */
^[:: sendInput {Media_Prev}
    ;// Media_Prev on Ctrl+[
^]:: sendInput {Media_Next}
    ;// Media_Next on Ctrl+]
^':: sendInput {Media_Play_Pause}
    ;// Media_Play_Pause on Ctrl+'


;/* Virtual desktop control */
;D #WheelUp::sendInput {LWin down}{LCtrl down}{Left}{LWin up}{LCtrl up} ;// switch to previous desktop
;D #WheelDown::sendInput {LWin down}{LCtrl down}{Right}{LWin up}{LCtrl up} ;// switch to next desktop
;D #MButton::sendInput {LWin down}{LCtrl down}{d}{LWin up}{LCtrl up} ;// new Desktop
;D #RButton::sendInput {LWin down}{LCtrl down}{f4}{LWin up}{LCtrl up} ;// remove Desktop
;D  ;// Alternative
#^z::sendInput {LWin down}{LCtrl down}{Left}{LWin up}{LCtrl up}{RAlt down}{Tab}{RAlt up} 
    ;// switch to previous desktop
#^x::sendInput {LWin down}{LCtrl down}{Right}{LWin up}{LCtrl up}{RAlt down}{Tab}{RAlt up} 
    ;// switch to next desktop
;D 
;D ;/* Additional mouse key remap */
;D XButton1::sendInput {RWin down} ;// Mouse x1 -> Right Windows Key
;D XButton1 Up::sendInput {RWin up}
;D 
;D XButton2::sendInput {Enter down} ;// Mouse x2 -> Enter Key
;D XButton2 Up::sendInput {Enter up}
;D 
;D AppsKey::sendEvent {RAlt down}{Tab}{RAlt up} ;// Apps key -> AltTab
;D 
;D 
;D ;/* Compatibility issue fix */
;D XButton1 & z:: run calc.exe ;// Windows Calculator on Win+z
;D XButton1 & c:: run cmd ;// Command Line on Win+c
;D 
;D XButton1 & WheelUp::sendInput {LWin down}{LCtrl down}{Left}{LWin up}{LCtrl up} ;// switch to previous desktop
;D XButton1 & WheelDown::sendInput {LWin down}{LCtrl down}{Right}{LWin up}{LCtrl up} ;// switch to next desktop
;D XButton1 & MButton::sendInput {LWin down}{LCtrl down}{d}{LWin up}{LCtrl up} ;// new Desktop
;D XButton1 & RButton::sendInput {LWin down}{LCtrl down}{f4}{LWin up}{LCtrl up} ;// remove Desktop
;D 
;D RWin & WheelUp::sendInput {LWin down}{LCtrl down}{Left}{LWin up}{LCtrl up} ;// switch to previous desktop
;D RWin & WheelDown::sendInput {LWin down}{LCtrl down}{Right}{LWin up}{LCtrl up} ;// switch to next desktop
;D RWin & MButton::sendInput {LWin down}{LCtrl down}{d}{LWin up}{LCtrl up} ;// new Desktop
;D RWin & RButton::sendInput {LWin down}{LCtrl down}{f4}{LWin up}{LCtrl up} ;// remove Desktop


;/* Key remaps */
^+/:: sendInput {AppsKey}
    ;// Ctrl+Shift+/ -> AppsKey


;/* Keystrokes */
:*:(c):: ©


;/* Other Features */
#g:: Run http://www.google.com/search?q=%Clipboard%
    ;// Google Search from clipboard. 

return