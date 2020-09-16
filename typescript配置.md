# tsconfig中一些容易疑惑的配置

- baseUrl: 用于非相对路径模块的定位，如果不指定是否是默认去node_modules/@types里寻找？所以我理解baseUrl和path其实都不需要特殊指定，因为我们大多数场景都是相对路径的方式去引用的
  - 但是有一种情况需要处理，就是当我们使用@来表示src目录时，是以non-relative的方式去引用代码的，如果不指定baseUrl和paths，typescript引擎将找不到对应的文件
- esModuleInterop: 当我们尝试使用es module的方式去引用一个commonJs模块时，开启本参数防止报错
- module: ts compiler以何种模式去处理源文件
- target: ts compiler处理后的产物（output）以何种方式生成
- moduleResolution: ts compiler如何去查找文件
- jsx: 如果代码中出现了jsx的话，必须指定该属性

关于tsconfig的一些文章：

- https://medium.com/@tommedema/typescript-confusion-tsconfig-json-module-moduleresolution-target-lib-explained-65db2c44b491
- https://medium.com/javascript-in-plain-english/typescript-configuration-options-tsconfig-json-561d4a2ad4b

重点看一下关于babel-plugin-transform-typescript的介绍

- https://babeljs.io/docs/en/babel-plugin-transform-typescript
- https://github.com/babel/babel/tree/master/packages/babel-plugin-transform-typescript

和babel的关系以及具体的作用是什么？

`@babel/preset-typescript不做类型检查，只负责语法转换`

经过一番努力，得出的结论是target和module属性无论怎么设置都不影响output,因为 @babel/preset-typescript压根就没有读取tsconfig这个文件。
甚至jsx属性无论设置什么也不影响了，因为preset-typescript不处理jsx。我猜想可能是ts的文档太久没更新了吧，最新的babel集成方式已经发生了变化。

它主要是做了两件事情：

- 删除ts相关各种代码
- 转换enum、namespace等代码