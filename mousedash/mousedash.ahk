; MouseDash
; Noodlefighter
; 2019-03-10

; mouse move to current window's center
!^w::
    WinGetPos, x, y, w, h, A
    MouseMove, w/2, h/2
return

; Move mouse in screens circularly
#q::    
    SysGet, n_max, MonitorCount
    n := GetMouseInScreenIndex()+1
    if (n > n_max)
        n = 0
    MoveToScreen(n)
return

; Ctrl+1
^1::
    MoveToScreen(1)
return

; Ctrl+2
^2::
    MoveToScreen(2)
return

; Ctrl+3
;^3::
    MoveToScreen(3)
return

; Ctrl+4
;^4::
    MoveToScreen(4)
return

; Ctrl+5
;^4::
    MoveToScreen(5)
return

; Ctrl+6
;^6::
    MoveToScreen(6)
return

; Ctrl+7
;^7::
    MoveToScreen(7)
return

; Ctrl+8
;^8::
    MoveToScreen(8)
return


; Mouse move to specified screen's center
; n: index of screen
MoveToScreen(n)
{
    SysGet, MonitorName, MonitorName, %n%
    SysGet, mon, Monitor, %n%
    SysGet, MonitorWorkArea, MonitorWorkArea, %n%
    ;MsgBox, mon:`t#%n%`nName:`t%monName%`nLeft:`t%monLeft% (%monWorkAreaLeft% work)`nTop:`t%monTop% (%monWorkAreaTop% work)`nRight:`t%monRight% (%monWorkAreaRight% work)`nBottom:`t%monBottom% (%monWorkAreaBottom% work)
    
    x := monLeft+(monRight-monLeft)/2
    y := monTop+(monBottom-monTop)/2
    ;MsgBox, %x%  %y%
    CoordMode, Mouse, Screen
    MouseMove x, y
}

; Get the screen index which the mouse on
GetMouseInScreenIndex() 
{
    CoordMode, Mouse, Screen
    MouseGetPos, mX, mY

    SysGet, numDisplays, MonitorCount
    SysGet, idxPrimary, MonitorPrimary

    Loop %numDisplays%
    {
        SysGet, mon, Monitor, %a_index%
        
        if ((mX >= monLeft) && (mX <= monRight) && (mY >= monTop) && (mY <= monBottom))
            return %a_index%
    }
    return idxPrimary
}
