# vim中的一些实用操作

## 1. 字符调整

比如 teh => the

> xp

## 2. 按需查找替换

我们想实现IDE中，find and replace的功能，可以这么做：

1. gg 返回文档顶部
2. /const 查找到第一个const
3. cwlet 删除一个word并进入插入模式,输入let。c和d的区别就在于删除后会不会进入插入模式
4. ESC
5. n 查找到下一个const
6. . 重复上一次操作

<!-- more -->

## 3. 按需查找替换（方法二）

> :%s/const/let/gc

1. : 进入命令模式
2. % 将指令应用于所有行
3. s 替换（substitute）指令的缩写
4. /const/ 要替换的文本
5. /let/ 用来替代的文本
6. g global标记，替代所有的匹配，而不是值匹配第一个
7. c confirm标记，每次替换前需要确认

## 4. 排序（visual mode）

比如我们有这么一段文本：

```
dog
cat
apple
zebra
peer
orange
```

想要对其已字母表顺序排序，可以这样：

1. gg 移动光标至顶部
2. V  进入 visual line mode
3. G  移动光标至末尾
4. !sort  ! 表示将选中的内容执行命令，命令是sort

## 5. 删除每一行末尾多余的空格或tab

```
:1,$s/[ <tab>]*$//
```

1. : 进入ex模式(命令模式)
2. 1,$ 从第一行到最后一行
3. s  替换（substitite）指令
4. ```/[ <tab>]*$/``` 正则，匹配任意数量结尾的空格和tab
5. // 替换成空

# 实战演练

### 5b71fa9105b5ca000ce4a7a1

from:
```
- browser: Chrome
  browserVersion: 63
  os: window7
  osVersion: 2012
  lang: en
```

to:
```
private String browser;
private String browserVersion;
private String os;
private String osVersion;
private String lang;
```

**method 1**
```
r :%s/  /private String /g<CR>:%s/\:.*/;/g<CR>ZZ 42
```
**method 2**
```
qqsprivate String<Esc>f:c$;<Esc>j0q4@qZZ 32
```

### 5b6f0fcba89379000c2328a4

from
```
#Everyday routine... :\ 

amazing_func("Some amazing text", 123, variable) # Kittens

def func():
        return 'Stuff for making movement harder'

def func2(m):
        v = 0
        for i in range(10):
                v += i*m
                print(v, i, m)

very_strange_func(42, foobar, 'Another text') # Dogs

test = func()
func2(len(test))
```

to
```
#Everyday routine... :\ 

amazing_func(42, foobar, 'Another text') # Kittens

def func():
        return 'Stuff for making movement harder'

def func2(m):
        v = 0
        for i in range(10):
                v += i*m
                print(v, i, m)

very_strange_func("Some amazing text", 123, variable) # Dogs

test = func()
func2(len(test))
```

**method 1**
```
/(<CR>di(5nvi(p6NpZZ 17
```
**method 2**
```
?) <CR>dibnvibpnPZZ 16
```
**method 3**
```
/#<CR>dF(nhv;pNPZZ 15
```

### 5b6e21c9a893790006232531

from
```
if(lang.equals("en_US")) {
        System.out.println("The lang is en_US i.e english US"+
}

if(lang.equals("es_US")) {
        System.out.println("The lang is es_US i.e spanish US"+
}

if(lang.equals("fr_US")) {
        System.out.println("The lang is fr_US i.e france US"+
}
```
to
```
if("en_US".equals(lang)) {
        System.out.println("The lang is en_US i.e english US"+
}

if("es_US".equals(lang)) {
        System.out.println("The lang is es_US i.e spanish US"+
}

if("fr_US".equals(lang)) {
        System.out.println("The lang is fr_US i.e france US"+
}
```
**method 1**
```
qqf(lde;vi(p0;p4+q2@qZZ 23
```

### 56fb2e75ccffcc0009026473

from
```
- One number per line -
-----------------------
2,3,5,7,
11,13,17,
19,23,29,
```
to
```
2
3
5
7
11
13
17
19
23
29
```

**method 1**
```
dj3JIwr<CR><Esc>u9@.wxZZ 17
```
**method 2**
```
dj3gJV"=[<C-R><C-A>]<CR>pZZ
```