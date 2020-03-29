;// Custom AHK (AutoHotKey) script v1.5
;// August 10, 2019
;// cvelth <cvelth.mail@gmail.com>
;// Licenced under "Unlicense", see <https://unlicense.org>


;// Special comments

;D is used to mark [[deprecated]] in this version script segments 

;Dc is used to mark [[deprecated]] in this version script segments, 
    ; specifying "hotkey conflict" as deprecation reason.


#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance force


;/* Procedures */

ActivateOrOpen(Title, Path) {
    if WinExist(Title)
        WinActivate
    else
        run %Path%
    return
}


;/* Program Launch */

#z::
    ;// Windows Calculator on Win+z
    run calc.exe
    return
#c::
    ;// Command Line on Win+c
    run cmd
    return
#v::
#F1::
    ;// Vivaldi Browser on Win+v and Win+F1
    ActivateOrOpen("ahk_exe vivaldi.exe", "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Vivaldi")
    return
#F2::
    ;// Visual Studio 2017 on Win+F2
    run "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Visual Studio 2019"
    return

#F5::
    ;// Telegram on Win+F5
    run "C:\Users\Cvelth\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Telegram"
    return
#F6::
    ;// Takoboto on Win+F6
    run explorer.exe shell:AppsFolder\32064Takoboto.TakobotoJapaneseDictionary_9b12gkevbv5ht!App
    return
#F7::
    ;// Adobe Photoshop CC 2019 on Win+F7
    ActivateOrOpen("ahk_class Photoshop", "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Photoshop CC 2019")
    return
#F8::
    ;// Simplenote on Win+F8
    run explorer.exe shell:AppsFolder\22490Automattic.Simplenote_9h07f78gwnchp!Simplenote
    return

#F10:: 
    ;// LastPass on Win+F10
    run explorer.exe shell:AppsFolder\LastPass.LastPass_qq0fmhteeht3j!App
    return
#F11:: 
    ;// Control Panel on Win+F11
    run "C:\Users\Cvelth\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Control Panel"
    return
#F12::
    ;// Monosnap on Win+F12
    run "C:\Users\Cvelth\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Monosnap"
    return

;D #RButton:: sendInput #{e}
;D     ;// Explorer on Win+RMB
;D XButton1 & RButton:: sendInput #{e}
;D     ;// Explorer on x1+RMB


;/* Media control */

^[::
    ;// Media_Prev on Ctrl+[
    sendInput {Media_Prev}
    return
^]::
    ;// Media_Next on Ctrl+]
    sendInput {Media_Next}
    return
^'::
    ;// Media_Play_Pause on Ctrl+'
    sendInput {Media_Play_Pause}
    return


;/* Virtual desktop control */

    ;/* Keyboard */

#^z::
    ;// switch to previous desktop
    keyWait LWin
    sendInput #^{Left}
    return
#^x::
    ;// switch to next desktop
    keyWait LWin
    sendInput #^{Right}
    return

#q::
    ;// switch to previous desktop
    keyWait LWin
    sendInput #^{Left}
    return
#w::
    ;// switch to next desktop
    keyWait LWin
    sendInput #^{Right}
    return
    
    ;/* Mouse */

#WheelUp::
    ;// switch to previous desktop
    keyWait LWin
    sendInput #^{Left}
    return
#WheelDown::
    ;// switch to next desktop
    keyWait LWin
    sendInput #^{Right}
    return
#MButton::
    ;// create new desktop
    keyWait LWin
    sendInput #^{d}
    return

XButton1 & WheelUp::
    ;// switch to previous desktop
    keyWait LWin
    sendInput #^{Left}
    return
XButton1 & WheelDown::
    ;// switch to next desktop
    keyWait LWin
    sendInput #^{Right}
    return
XButton1 & MButton::
    ;// create new desktop
    keyWait LWin
    sendInput #^{d}
    return


;/* Key remaps */

^+/:: sendInput {AppsKey}
    ;// Ctrl+Shift+/ -> AppsKey


;/* Keystrokes */

:*:(c):: ©


;/* Other Features */

#g::
    ;// Google Search using value stored in the clipboard.
    Run http://www.google.com/search?q=%Clipboard%
    return


return