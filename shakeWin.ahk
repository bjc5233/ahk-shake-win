#SingleInstance,Force
;说明
;  配置按下指定按键后，当前窗口抖动
;  当前配置的是a，可自由替换为其他按键
;常见非字母按键列表
;  LButton 鼠标左键
;  RButton 鼠标右键
;  MButton 鼠标中键
;  WheelDown 鼠标滚轮向下
;  WheelUp 鼠标滚轮向上
;  Space 空格键
;  Tab Tab键盘
;  Enter  回车键
;  Escape  退出键
offset = 5
loopNum = 5
SetWinDelay, 40

~a::
WinGetPos, Xpos, Ypos,,, A
Loop, %loopNum%
{
	WinMove, A,, Xpos, Ypos+offset
	WinMove, A,, Xpos+offset, Ypos
	WinMove, A,, Xpos, Ypos-offset
	WinMove, A,, Xpos-offset, Ypos
}
return