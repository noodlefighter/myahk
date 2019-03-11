
; Noodlefighter
; 2019-03-10

; 
; # Win
; + Shift
; ^ Ctrl
; ! Alt
;

#SingleInstance force
#NoTrayIcon

#include %A_scriptDir%\iswitchw\iswitchw.ahk
#include %A_scriptDir%\mousedash\mousedash.ahk


;---- 重启脚本
!^+r::
    MsgBox,AutoHotKey, 脚本将重启
    Reload  ; Reload the script by Ctrl+Shift+Alt+R.
return

;---- 按下 Win + S， 选中文本并Google之
#s::
    Send ^c
    Sleep, 50
    Run, http://www.google.com/search?q=%clipboard%
Return

;---- 按 Win + F ，复制文字，追加到Notepad++，可用于快速收集、编辑文本
#f::
    Sleep, 100
    Send ^c
    Sleep, 100
    IfWinExist ahk_class Notepad++
    {
        WinActivate
    }
    else
    {
        Run Notepad++
        WinWait ahk_class Notepad++
        WinActivate
    }
    Send ^{End} ^{Enter} ^v
return

