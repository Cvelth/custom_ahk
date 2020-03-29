;// Custom AHK (AutoHotKey) script v1.4.1.1
;// July 9, 2019
;// cvelth <cvelth.mail@gmail.com>
;// Licenced under "Unlicense", see <https://unlicense.org>


;// Special comments

;D is used to mark [[deprecated]] in this version script segments 

;Dc is used to mark [[deprecated]] in this version script segments, 
    ; specifying "hotkey conflict" as deprecation reason.


#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance off


;/* Procedures */

ActivateOrOpen(Title, Path) {
    if WinExist(Title)
        WinActivate
    else
        run %Path%
    return
}


;/* Program Launch */

#z:: run calc.exe 
    ;// Windows Calculator on Win+z
#c:: run cmd 
    ;// Command Line on Win+c
#v:: ActivateOrOpen("ahk_exe vivaldi.exe", "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Vivaldi")
    ;// Vivaldi Browser on Win+v

#F1:: ActivateOrOpen("ahk_exe vivaldi.exe", "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Vivaldi")
    ;// Vivaldi Browser on Win+F1
#F2:: run "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Visual Studio 2019"
    ;// Visual Studio 2017 on Win+F2

#F5:: run "C:\Users\Cvelth\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Telegram"
    ;// Telegram on Win+F5
#F6:: run explorer.exe shell:AppsFolder\32064Takoboto.TakobotoJapaneseDictionary_9b12gkevbv5ht!App
    ;// Takoboto on Win+F6
#F7:: ActivateOrOpen("ahk_class Photoshop", "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Photoshop CC 2019")
    ;// Adobe Photoshop CC 2019 on Win+F7
#F8:: run explorer.exe shell:AppsFolder\22490Automattic.Simplenote_9h07f78gwnchp!Simplenote
    ;// Simplenote on Win+F8

#F10:: run explorer.exe shell:AppsFolder\LastPass.LastPass_qq0fmhteeht3j!App
    ;// LastPass on Win+F10
#F11:: run "C:\Users\Cvelth\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Control Panel"
    ;// Control Panel on Win+F11
#F12:: run "C:\Users\Cvelth\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Monosnap"
    ;// Monosnap on Win+F12

#RButton:: sendInput #{e}
    ;// Explorer on Win+RMB
XButton1 & RButton:: sendInput #{e}
    ;// Explorer on x1+RMB


;/* Media control */

^[:: sendInput {Media_Prev}
    ;// Media_Prev on Ctrl+[
^]:: sendInput {Media_Next}
    ;// Media_Next on Ctrl+]
^':: sendInput {Media_Play_Pause}
    ;// Media_Play_Pause on Ctrl+'


;/* Virtual desktop control */

#^z:: sendInput #^{Left} ;!{Tab}
    ;// switch to previous desktop
#^x:: sendInput #^{Right} ;!{Tab}
    ;// switch to next desktop
    
    ;/* Mouse controls */

#WheelUp:: sendInput #^{Left}
    ;// switch to previous desktop
#WheelDown:: sendInput #^{Right}
    ;// switch to next desktop
#MButton:: sendInput #^{d}
    ;// create new desktop
;Dc #RButton:: sendInput #^{f4}
;Dc     ;// delete current desktop

XButton1 & WheelUp:: sendInput #^{Left}
    ;// switch to previous desktop
XButton1 & WheelDown:: sendInput #^{Right}
    ;// switch to next desktop
XButton1 & MButton:: sendInput #^{d} 
    ;// create new desktop
;Dc XButton1 & RButton:: sendInput #^{f4} 
;Dc     ;// delete current desktop


;/* Key remaps */

^+/:: sendInput {AppsKey}
    ;// Ctrl+Shift+/ -> AppsKey


;/* Keystrokes */

:*:(c):: ©


;/* Other Features */

#g:: Run http://www.google.com/search?q=%Clipboard%
    ;// Google Search from clipboard. 


return