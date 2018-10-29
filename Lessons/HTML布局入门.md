## 古老的布局方式：Table

```html
<table>
    <tr>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td></td>
        <td></td>
    </tr>
</table>
```

优点：
* 简单清晰

缺点：
* 不易修改，改动成本高

## 浮动布局

> 浮动的包裹性

撇开浮动的“破坏性”，浮动就是一个带有方位的 display:inline-block。
display:inline-block某种意义上的作用就是包裹(wrap)，而浮动也有类似的效果。

> 浮动的破坏性

浮动可以说是所有CSS属性中的“破坏之王”。要理解浮动的破坏性，我们要从浮动最原始的意义入手。我在上面把浮动的原始意义用粗斜体表示出来了，就是“只是用来让文字环绕图片而已，仅此而已。”

[CSS float浮动的深入研究、详解及拓展(一)](https://www.zhangxinxu.com/wordpress/2010/01/css-float%E6%B5%AE%E5%8A%A8%E7%9A%84%E6%B7%B1%E5%85%A5%E7%A0%94%E7%A9%B6%E3%80%81%E8%AF%A6%E8%A7%A3%E5%8F%8A%E6%8B%93%E5%B1%95%E4%B8%80/)

## Flex布局

[Flex 布局教程：语法篇](http://www.ruanyifeng.com/blog/2015/07/flex-grammar.html?utm_source=tuicool)