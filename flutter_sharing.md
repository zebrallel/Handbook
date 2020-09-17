# Flutter中的布局

1. 上层 widget 向下层 widget 传递约束条件
2. 下层 widget 向上层 widget 传递大小信息
3. 上层 widget 决定下层 widget 的位置。

约束：

* html认为画布的大小是无限的，父容器可以被子容器撑开
* flutter的认为画布是有限的，子容器需要被父容器约束

### 常见组件

* Container (margin、padding、width、height、color、border)
* Center
* Align

```dart
Container(
  width: 100,
  height: 100,
  color: Colors.red,
  padding: EdgeInsets.all(20),
)
```