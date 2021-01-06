;// Custom AHK (AutoHotKey) script v1.9.0
;// January 6th, 2021
;// cvelth <cvelth.mail@gmail.com>
;// Licenced under "Unlicense", see <https://unlicense.org>

#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance force
DetectHiddenWindows, On
SetTitleMatchMode, 2


;/* Helpers */

ActivateOrOpen(Title, Command) {
    if WinExist(Title)
        WinActivate
    else
        run %Command%
    return
}


;/* Program Launch */

#c::
    ;// "Windows Terminal" on Win+c
    ActivateOrOpen("ahk_exe WindowsTerminal.exe", "wt")
    return
#z::
    ;// "Windows Calculator" on Win+z
    ActivateOrOpen("Calculator", "calc.exe")
    return
#f::
    ;// "NotepadS" on Win+f
    run explorer.exe shell:AppsFolder\19282JackieLiu.Notepads-Beta_echhpq9pdbte8!App
    return
#v::
#F1::
    ;// "Vivaldi Browser" on Win+v and Win+F1
    ActivateOrOpen("ahk_exe vivaldi.exe", "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Vivaldi")
    return
#F2::
    ;// "Visual Studio 2019" on Win+F2
    ActivateOrOpen("Microsoft Visual Studio", "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Visual Studio 2019")
    return
#F3::
    ;// "PotPlayer" on Win+F3
    ActivateOrOpen("PotPlayer", "C:\Program Files\PotPlayer\PotPlayerMini64.exe")
    return
#F4::
    ;// "Line" on Win+F4
    ActivateOrOpen("はるか", "C:\Users\Cvelth\AppData\Local\LINE\bin\current\LINE.exe")
    return
#F5::
    ;// "Telegram" on Win+F5
    ActivateOrOpen("Telegram", "C:\Users\Cvelth\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Telegram")
    run "C:\Users\Cvelth\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Telegram"
    return
#F6::
    ;// "Takoboto" on Win+F6
    run explorer.exe shell:AppsFolder\32064Takoboto.TakobotoJapaneseDictionary_9b12gkevbv5ht!App
    return
#F7::
    ;// "Adobe Photoshop CC 2021" on Win+F7
    ActivateOrOpen("ahk_class Photoshop", "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Photoshop 2021")
    return
#F8::
    ;// "TickTick" on Win+F8
    run "C:\Program Files (x86)\TickTick\TickTick.exe"
    return
#F9::
    ;// "Simplenote" on Win+F9
    run explorer.exe shell:AppsFolder\22490Automattic.Simplenote_9h07f78gwnchp!Simplenote
    return
#F10:: 
    ;// "Bitwarden" on Win+F10
    run "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Bitwarden"
    return
#F11:: 
    ;// "Control Panel" on Win+F11
    run "C:\Users\Cvelth\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Control Panel"
    return
#F12::
    ;// "Monosnap" on Win+F12
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

; [[deprecated]]
; $!F1:: 
;     ;// flip-flop windows with lowest and highest Z-order value
;     ;// Limited to current desktop 
;     if (next_altesc_direction) {
;         sendInput !{Esc}
;         next_altesc_direction := false
;     } else {
;         sendInput !+{Esc}
;         next_altesc_direction := true 
;     }
;     return

!2::
    ;// switch to previous virtual desktop with Alt+2
    ;// remembers last move direction
    sendInput #^{Left}
    right_virtual_desktop_is_next := true
    return
!3::
    ;// switch to next virtual desktop with Alt+3
    ;// remembers last move direction
    sendInput #^{Right}
    right_virtual_desktop_is_next := false
    return
!1::
    ;// flip-flop with last visited virtual desktop with Alt+1
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
    right_virtual_desktop_is_next = false
    sendInput #^{Right}
    return

   ;/* Mouse */

; [[deprecated]]
; #WheelUp::
;     ;// switch to previous desktop with Win+WheelUp
;     keyWait LWin
;     sendInput #^{Left}
;     return
; #WheelDown::
;     ;// switch to next desktop with Win+WheelDown
;     keyWait LWin
;     sendInput #^{Right}
;     return
; #MButton::
;     ;// create new desktop with Win+MMB
;     keyWait LWin
;     sendInput #^{d}
;     return
; 
; XButton1 & WheelUp::
;     ;// switch to previous desktop with x1+WheelUp
;     keyWait LWin
;     sendInput #^{Left}
;     return
; XButton1 & WheelDown::
;     ;// switch to next desktop with x1+WheelDown
;     keyWait LWin
;     sendInput #^{Right}
;     return
; XButton1 & MButton::
;     ;// create new desktop with x1+MMB
;     keyWait LWin
;     sendInput #^{d}
;     return


;/* Key remaps */

^+/:: sendInput {AppsKey}
    ;// Ctrl+Shift+/ -> AppsKey


;/* Keystrokes */
; [[deprecated]]
; :*:(c):: ©
;     ;// (c) -> ©


;/* Other Features */

#g::
    ;// Google Search using value stored in the clipboard.
    Run http://www.google.com/search?q=%Clipboard%
    return

#b:: sendInput #+v1
    ;//Focus a displayed notification

return