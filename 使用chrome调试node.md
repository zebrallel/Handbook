### 基础用法

node --inspect index.js

```
Debugger listening on ws://127.0.0.1:9229/4258f975-84f2-4693-b15f-d95020ccdeae
For help, see: https://nodejs.org/en/docs/inspector
```

此时打开：chrome://inspect

选择对应的node实例，开始调试

### 从第一行开始断点

node --inspect-brk index.js

该命令的作用是从程序第一行开始断点