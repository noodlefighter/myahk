
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


;---- �����ű�
!^+r::
    MsgBox,AutoHotKey, �ű�������
    Reload  ; Reload the script by Ctrl+Shift+Alt+R.
return

;---- ���� Win + S�� ѡ���ı���Google֮
#s::
    Send ^c
    Sleep, 50
    Run, http://www.google.com/search?q=%clipboard%
Return

;---- �� Win + N �����������ü��±��鿴
#n::
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
    Send ^v
return

