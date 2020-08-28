### entry

构建依赖时的入口，如果指定单个entry或者entries array，打包默认生成main.js
如果以对象的形式配置，例如：

```js
entry: {
  a: './src/a.js',
  b: './src/b.js'
},
```

则默认输出 `a.js` and `b.js`


### output

_publicPath_: 当我们使用loader加载了一张图片或者其他什么文件，最后生成了URL时，`publicPath`的值，将会被作为URL的前缀添加上去。webpack-dev-server也会去读取这个值，来决定如何去serve那些文件。


### css-loader

输入：css文件里包含的字符串
```
html,
body{
  margin: 0;
  padding: 0;
}
```

输出：

```
// Imports
var ___CSS_LOADER_API_IMPORT___ = require("../../node_modules/css-loader/dist/runtime/api.js");
exports = ___CSS_LOADER_API_IMPORT___(false);
// Module
exports.push([module.id, "html,\nbody{\n  margin: 0;\n  padding: 0;\n}", ""]);
// Exports
module.exports = exports;
```

可以看到，css-loader将我们的css string转换成了一个js模块，即用exports的方式将原先的css字符串包裹，使其能够被js引擎处理。

### Pitching Loader

loader拥有一个称为pitching的生命周期，意思是需要按照loaders定义的顺序从左往右执行，具体用法是在loader export出来的那个default对象上面，添加一个pitch方法。

```js
module: {
    rules: [
      {
        //...
        use: [
          'a-loader',
          'b-loader',
          'c-loader'
        ]
      }
    ]
  }
```

执行顺序：

```
|- a-loader `pitch`
  // 此时，如果a-loader的pitch loader返回了一个result，以下的loader就不再执行。pitch loader最早的作用是加快loaders的执行速度
  |- b-loader `pitch`
    |- c-loader `pitch`
      |- requested module is picked up as a dependency
    |- c-loader normal execution
  |- b-loader normal execution
|- a-loader normal execution
```

### style-loader 

作用是将css-loader的处理结果，以某种方式添加到页面上去，例如：styleTag、linkTag

```js
var api = require("!../../node_modules/style-loader/dist/runtime/injectStylesIntoStyleTag.js");
var content = require("!!../../node_modules/css-loader/dist/cjs.js??ref--4-1!../../node_modules/postcss-loader/src/index.js??ref--4-2!./a.css");

content = content.__esModule ? content.default : content;

if (typeof content === 'string') {
  content = [[module.id, content, '']];
}

var options = {};

options.insert = "head";
options.singleton = false;

var update = api(content, options);

module.exports = content.locals || {};
```