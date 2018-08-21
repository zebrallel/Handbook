# 2018-8-15 Wednesday

* 可视化平台布局优化
  * 添加图层模式和布局模式的切换
  * 添加限高模式和不限高模式的切换
  * 添加手机屏幕的自适应

# 2019-8-16 Thursday

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

**需要实现的功能**

1. 给ReactGridLayout层添加一个监听器，监听视窗宽度大小，当小于某一固定值时，将所有元素垂直排列
2. 每个元素有个最小高度，优先保持元素的长宽比，若最终高度小于设定的最小高度，则使用最小高度为元素的高度
3. 需要记录所有元素的原始位置，当宽度大于固定值，元素需要复原到原位
4. 当页面进入垂直模式后，禁用所有元素的缩放监听器，只保留一个被选中的元素监听
5. 被选中的元素用蓝框包裹

# 2018-8-20 Monday

### 本周工作

* 完成移动端zatlas适配，初步做出demo

# 2018-8-21 Tuesday

charles 4.0.1版本遇到bug，无法解析资源。换成最新的4.2.6解决了问题。

```
premature EOF encountered
```

https://www.zzzmode.com/mytools/charles/

charles 在线破解工具

