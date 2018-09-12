# 2018-8-15 Wednesday

* 可视化平台布局优化
  * 添加图层模式和布局模式的切换
  * 添加限高模式和不限高模式的切换
  * 添加手机屏幕的自适应

# 2018-8-16 Thursday

```
dj3gJV"=[<C-R><C-A>]<CR>pZZ
```

Todos:

* vim命令解析，并完善ppt done
* zatlas项目中的react-grid-layout替换
* ppt中添加关于vscode和chrome中，vim插件支持内容，还有就是vundle done


**React-grid-layout 结构**

- ReactGridLayout
  - GridItem
    - DraggableCore
      - Resizeable
        - DraggableCore * 4

**几个待确认的点**

* 拖拽是监听什么事件实现的
* 自动重排的实现方法（向上紧凑，向左紧凑）
