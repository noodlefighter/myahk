; MouseDash
; Noodlefighter
; 2019-03-10

; mouse move to current window's center
#w::
    WinGetPos, x, y, w, h, A
    MouseMove, w/2, h/2
return

; Mouse move to specified screen's center
; n: index of screen
MoveToScreen(n)
{
    SysGet, MonitorName, MonitorName, %n%
    SysGet, Monitor, Monitor, %n%
    SysGet, MonitorWorkArea, MonitorWorkArea, %n%
    ;MsgBox, Monitor:`t#%n%`nName:`t%MonitorName%`nLeft:`t%MonitorLeft% (%MonitorWorkAreaLeft% work)`nTop:`t%MonitorTop% (%MonitorWorkAreaTop% work)`nRight:`t%MonitorRight% (%MonitorWorkAreaRight% work)`nBottom:`t%MonitorBottom% (%MonitorWorkAreaBottom% work)
    
    x := MonitorLeft+(MonitorRight-MonitorLeft)/2
    y := MonitorTop+(MonitorBottom-MonitorTop)/2
    ;MsgBox, %x%  %y%    
    CoordMode, Mouse, Screen
    MouseMove x, y
}

; Ctrl+1
^1::
    MoveToScreen(1)
return

; Ctrl+2
^2::
    MoveToScreen(2)
return