
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


;---- �༭�������ű� -------------------

!^+e::
    Edit   ; Edit the script by Ctrl+Shift+Alt+E.
return

!^+r::
    MsgBox,AutoHotKey, �ű�������
    Reload  ; Reload the script by Ctrl+Shift+Alt+R.
return

;---- ���� Ctrl + Shift + S�� ѡ���ı���Google֮ -------------------
^+s::
	Send, ^c
	Sleep 50
	Run, http://www.google.com/search?q=%clipboard%
Return

;---- �� Ctrl + Shift + E �����������ü��±��鿴 ----------------
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

