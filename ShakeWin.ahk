;说明
;  按下指定字符抖动当前窗口
;external
;  date       2019-08-10 15:09:49
;  face       (>_<)
;  weather    Shanghai Moderate rain 28℃
#SingleInstance,Force
offset = 5
loopNum = 5
SetWinDelay, 40

~a::
    WinGetPos, Xpos, Ypos,,, A
    Loop, %loopNum% {
        WinMove, A,, Xpos, Ypos+offset
        WinMove, A,, Xpos+offset, Ypos
        WinMove, A,, Xpos, Ypos-offset
        WinMove, A,, Xpos-offset, Ypos
    }
return