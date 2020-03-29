;// Custom AHK (AutoHotKey) script v1.5.1.1
;// August 10, 2019
;// cvelth <cvelth.mail@gmail.com>
;// Licenced under "Unlicense", see <https://unlicense.org>


;// Special comments

;D is used to mark [[deprecated]] in this version script segments 

;Dc is used to mark [[deprecated]] in this version script segments, 
    ; specifying "hotkey conflict" as the reason.

;T is used to mark [[in testing]] in this version script segments

;Tu is used to mark [[in testing]] in this version script segments,
    ; specifying "unstable" as the reason.


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
    ;// switch to previous desktop with Win+Ctrl+z
    keyWait LWin
    sendInput #^{Left}
    return
#^x::
    ;// switch to next desktop with Win+Ctrl+x
    keyWait LWin
    sendInput #^{Right}
    return

#q::
    ;// switch to previous desktop with Win+q
    keyWait LWin
    sendInput #^{Left}
    return
#w::
    ;// switch to next desktop with Win+w
    keyWait LWin
    sendInput #^{Right}
    return

CapsLock & a:: 
    ;// switch to previous desktop with CapsLock+a
    keyWait LWin
    keyWait a
    sendInput #^{Left}
    ; sendInput {CapsLock}
    return
CapsLock & s:: 
    ;// switch to next desktop with CapsLock+s
    keyWait LWin
    keyWait s
    sendInput #^{Right}
    ; sendInput {CapsLock}
    return
    
    ;/* Mouse */

#WheelUp::
    ;// switch to previous desktop with Win+WheelUp
    keyWait LWin
    sendInput #^{Left}
    return
#WheelDown::
    ;// switch to next desktop with Win+WheelDown
    keyWait LWin
    sendInput #^{Right}
    return
#MButton::
    ;// create new desktop with Win+MMB
    keyWait LWin
    sendInput #^{d}
    return

XButton1 & WheelUp::
    ;// switch to previous desktop with x1+WheelUp
    keyWait LWin
    sendInput #^{Left}
    return
XButton1 & WheelDown::
    ;// switch to next desktop with x1+WheelDown
    keyWait LWin
    sendInput #^{Right}
    return
XButton1 & MButton::
    ;// create new desktop with x1+MMB
    keyWait LWin
    sendInput #^{d}
    return


;/* Key remaps */

^+/:: sendInput {AppsKey}
    ;// Ctrl+Shift+/ -> AppsKey


;/* Keystrokes */

:*:(c):: ©
    ;// (c) -> ©


;/* Other Features */

#g::
    ;// Google Search using value stored in the clipboard.
    Run http://www.google.com/search?q=%Clipboard%
    return

;Tu CapsLock & Tab::
;Tu     keyWait LAlt
;Tu     keyWait Tab
;Tu     sendInput !{Tab}
;Tu     sendInput {CapsLock}
;Tu     return


return