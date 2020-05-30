function bar() {
  console.log(name);
}

function foo() {
  var name = "alice";
  bar();
}

var name = "jack";

foo();
