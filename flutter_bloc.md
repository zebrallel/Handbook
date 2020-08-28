### BlocBuilder

可以理解成是一个接收state变化的终端，当state发生变化后，BlocBuilder中的builder方法会被调用。
bloc参数如果没有设置，则会默认通过context寻找bloc的实例，如果父级没有通过BlocProvider注入bloc实例的话，则会报错。
也可以手动注入bloc实例。

### BlocConsumer

结合了BlocBuilder和BlocListener，当我们同时需要更新UI和处理一些依赖state的逻辑时，可以使用BlocConsumer。

### BlocProvider

如果想在整个subtree中可以通过context访问到bloc实例，则必须使用BlocProvider来包裹当前的容器，注入bloc实例。