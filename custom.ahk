;// Custom AHK (AutoHotKey) script v1.6.3
;// May 14th, 2020
;// cvelth <cvelth.mail@gmail.com>
;// Licenced under "Unlicense", see <https://unlicense.org>


;/* Special comments */


;D  is used to mark [[deprecated]] in this version script segments 

;Dc is used to mark [[deprecated]] in this version script segments, 
    ; specifying "hotkey conflict" as the reason.

;Do is used to mark [[deprecated]] in this version script segments, 
    ; specifying "obsolete" as the reason.


;T  is used to mark [[in testing]] in this version script segments

;Tu is used to mark [[in testing]] in this version script segments,
    ; specifying "unstable" as the reason.


#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance force


;/* Helpers */

ActivateOrOpen(Title, Path) {
    if WinExist(Title)
        WinActivate
    else
        run %Path%
    return
}


;/* Program Launch */

#c::
    ;// New Windows Terminal on Win+c
    ActivateOrOpen("ahk_exe WindowsTerminal.exe", "wt")
    return
#z::
    ;// Windows Calculator on Win+z
    run calc.exe
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
#F3::
    ;// PotPlayer on Win+F3
    ActivateOrOpen("ahk_exe PotPlayerMini64.exe", "C:\Program Files\PotPlayer\PotPlayerMini64.exe")
    return
#F4::
    ;// Line on Win+F4
    ActivateOrOpen("はるか", "C:\Users\Cvelth\AppData\Local\LINE\bin\current\LINE.exe")
    return
#F5::
    ;// Telegram on Win+F5
    ActivateOrOpen("Telegram", "C:\Users\Cvelth\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Telegram")
    run "C:\Users\Cvelth\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Telegram"
    return
#F6::
    ;// Takoboto on Win+F6
    run explorer.exe shell:AppsFolder\32064Takoboto.TakobotoJapaneseDictionary_9b12gkevbv5ht!App
    return
#F7::
    ;// Adobe Photoshop CC 2019 on Win+F7
    ActivateOrOpen("ahk_class Photoshop", "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Photoshop 2020")
    return
#F8::
    ;// TickTick on Win+F8
    run "C:\Program Files (x86)\TickTick\TickTick.exe"
    return
#F9::
    ;// Simplenote on Win+F9
    run explorer.exe shell:AppsFolder\22490Automattic.Simplenote_9h07f78gwnchp!Simplenote
    return
#F10:: 
    ;// Bitwarden on Win+F10
    run "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Bitwarden"
    return
#F11:: 
    ;// Control Panel on Win+F11
    run "C:\Users\Cvelth\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Control Panel"
    return
#F12::
    ;// Monosnap on Win+F12
    run "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Monosnap"
    return


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


;/* Navigation */

$!F1:: 
    ;// flip-flop windows with lowest and highest Z-order value
    ;// Limited to current desktop 
    if (next_altesc_direction) {
        sendInput !{Esc}
        next_altesc_direction := false
    } else {
        sendInput !+{Esc}
        next_altesc_direction := true 
    }
    return

!2::
    ;// switch to previous virtual desktop with Alt+1
    ;// remembers last move direction
    sendInput #^{Left}
    right_virtual_desktop_is_next := true
    return
!3::
    ;// switch to next virtual desktop with Alt+2
    ;// remembers last move direction
    sendInput #^{Right}
    right_virtual_desktop_is_next := false
    return
!1::
    ;// flip-flop with last visited virtual desktop with Alt+`
    ;// uses last move direction
    if (right_virtual_desktop_is_next) {
        sendInput #^{Right}
        right_virtual_desktop_is_next := false
    } else {
        sendInput #^{Left}
        right_virtual_desktop_is_next := true 
    }
    return

#q::
    ;// switch to previous virtual desktop with Win+q
    ;// remembers last move direction
    keyWait LWin
    sendInput #^{Left}
    right_virtual_desktop_is_next := true
    return
#w::
    ;// switch to next virtual desktop with Win+w
    ;// remembers last move direction
    keyWait LWin
    sendInput #^{Right}
    right_virtual_desktop_is_next := false
    return

$#^Left::
    ;// default switch to previous virtual desktop shortcut
    ;// remembers last move direction
    right_virtual_desktop_is_next = true
    sendInput #^{Left}
    return
$#^Right::
    ;// default switch to next virtual desktop shortcut
    ;// remembers last move direction
    right_virtual_desktop_is_next = true
    sendInput #^{Right}
    return

   ;/* Mouse */

;Do #WheelUp::
;Do     ;// switch to previous desktop with Win+WheelUp
;Do     keyWait LWin
;Do     sendInput #^{Left}
;Do     return
;Do #WheelDown::
;Do     ;// switch to next desktop with Win+WheelDown
;Do     keyWait LWin
;Do     sendInput #^{Right}
;Do     return
;Do #MButton::
;Do     ;// create new desktop with Win+MMB
;Do     keyWait LWin
;Do     sendInput #^{d}
;Do     return
;Do 
;Do XButton1 & WheelUp::
;Do     ;// switch to previous desktop with x1+WheelUp
;Do     keyWait LWin
;Do     sendInput #^{Left}
;Do     return
;Do XButton1 & WheelDown::
;Do     ;// switch to next desktop with x1+WheelDown
;Do     keyWait LWin
;Do     sendInput #^{Right}
;Do     return
;Do XButton1 & MButton::
;Do     ;// create new desktop with x1+MMB
;Do     keyWait LWin
;Do     sendInput #^{d}
;Do     return


;/* Key remaps */

^+/:: sendInput {AppsKey}
    ;// Ctrl+Shift+/ -> AppsKey


;/* Keystrokes */

;Do :*:(c):: ©
;Do     ;// (c) -> ©


;/* Other Features */

#g::
    ;// Google Search using value stored in the clipboard.
    Run http://www.google.com/search?q=%Clipboard%
    return


return