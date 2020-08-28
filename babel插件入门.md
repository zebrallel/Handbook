### babel运行主要的三个阶段

- 生成AST
  - 生成lexical tokens
  - 生成AST
- 消费plugins (traverse)
- 生成最终代码

### 使用visitor来访问AST

babel为了方便我们遍历AST，提供了visitor，接收指定的对象如：

- Identifier
- FunctionDeclaration

当访问到某个节点时，对应的函数则会被执行，这大大简化了我们自己手动去遍历AST的繁琐操作。

一个最简单的函数声明：

```js
function hello(){
  return 'hello'
}
```

对应的AST：

```json
    {
      "type": "FunctionDeclaration",
      "start": 74,
      "end": 110,
      "id": {
        "type": "Identifier",
        "start": 83,
        "end": 88,
        "name": "hello"
      },
      "expression": false,
      "generator": false,
      "async": false,
      "params": [],
      "body": {
        "type": "BlockStatement",
        "start": 90,
        "end": 110,
        "body": [
          {
            "type": "ReturnStatement",
            "start": 94,
            "end": 108,
            "argument": {
              "type": "Literal",
              "start": 101,
              "end": 108,
              "value": "hello",
              "raw": "'hello'"
            }
          }
        ]
      }
    }
```

# 所有的babel-types

https://babeljs.io/docs/en/next/babel-types.html

# 区分statement和expression

- expression总有值，可以作为函数的参数传递
- statement不总有值

### 参考资料

- https://itnext.io/introduction-to-custom-babel-plugins-98a62dad16ee