
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


;---- 编辑和重启脚本 -------------------

!^+e::
    Edit   ; Edit the script by Ctrl+Shift+Alt+E.
return

!^+r::
    MsgBox,AutoHotKey, 脚本将重启
    Reload  ; Reload the script by Ctrl+Shift+Alt+R.
return

;---- 按下 Ctrl + Shift + S， 选中文本并Google之 -------------------
^+s::
	Send, ^c
	Sleep 50
	Run, http://www.google.com/search?q=%clipboard%
Return

;---- 按 Ctrl + Shift + E ，复制文字用记事本查看 ----------------
^+e::
    Send ^c
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

