# MouseDash

## Ctrl+数字键

鼠标快速移动到指定屏幕中央。

现在只启用了2个屏的切换键，有更多屏的用户请自己解除屏蔽，如将：

```none
; Ctrl+3
;^3::
    MoveToScreen(3)
return
```

删除注释符`;`改为：
```
; Ctrl+3
^3::
    MoveToScreen(3)
return
```


## Win+Q

让鼠标循环地在各屏幕间切换。

## Ctrl+Alt+W

鼠标快速移动到活动窗口（焦点所在窗口）的中央。
