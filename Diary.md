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

* vim命令解析，并完善ppt Done
* zatlas项目中的react-grid-layout替换 
* ppt中添加关于vscode和chrome中，vim插件支持内容，还有就是vundle Done

**react-grid-layout structure**

- ReactGridLayout
  - GridItem
    - DraggableCore
      - Resizeable
        - DraggableCore

**待确认**

* 拖拽是如何实现事件监听的
* 组件发生重叠时，重新布局的算法实现方式（向左紧凑，向上紧凑）

1. 组件拖动是由 React-Draggable 库实现的
2. 组件缩放是由 Recct-Resizable 库实现的

**offsetParent**

offsetParent: 返回与当前元素最近的经过定位(position不等于static)的父级元素

**offsetWidth**

```
offsetWidth =  border-left-width + padding-left + width + padding-right + border-right-width; 
offsetHeight =  border-top-width + padding-top + height + padding-bottom + border-bottom-width
```

**offsetTop**

offsetTop表示元素的上外边框至offsetParent元素的上内边框之间的像素距离

**offsetLeft**

offsetLeft表示元素的左外边框至offsetParent元素的左内边框质检的像素距离
