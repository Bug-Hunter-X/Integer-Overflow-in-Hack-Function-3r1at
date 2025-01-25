```hack
function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  if (x > 2147483646) { // Check for potential overflow
    throw new Exception("Integer overflow in bar function");
  }
  return foo(x) * 2;
}

function baz(x: int): int {
  if (x > 2147483646) {
    throw new Exception("Integer overflow in baz function");
  }
  return bar(x) - 1;
}

function main(): void {
  try {
    echo baz(5);
  } catch (Exception $e) {
    echo $e->getMessage();
  }
}
```