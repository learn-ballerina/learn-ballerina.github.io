# Avoid unnecessary type casts

- Type casts result in panics if the cast fails.
- Type casts may also get in the way of identifying certain incompatibilities that could be detected at compile-time.
- Conditional type narrowing can be used to narrow the type of a variable, instead of using a cast.

<h4><img align="center" height="30" src="../img/BadCode.png"> Bad Code</h4>

```bal
import ballerina/io;

public function main() {
    int|string value = "10";
    io:println(increment(value)); //Will panic
}

function increment(int|string value) returns int {
    return <int>value + 1;
}
```

<h4><img align="center" height="30" src="../img/GoodCode.png"> Good Code</h4>

```bal
import ballerina/io;

public function main() {
    int|string value = "10";
    io:println(increment(value));
}

function increment(int|string value) returns int|error {
    if value is int {
        // Type of `value` is narrowed to `int`
        return value + 1;
    }
    // Type of `value` is narrowed to `string`
    return check int:fromString(value) + 1;
}
```
- Never use a cast when the cast can actually panic. Use `value:ensureType` which is similar to a type cast, but returns an error instead of panicking.

<h4><img align="center" height="30" src="../img/GoodCode.png"> Good Code</h4>

```bal
import ballerina/io;

public function main() {
    int|string value = "10";
    io:println(increment(value)); //Will return error instead of panic
}

function increment(int|string value) returns int|error {
    return check value.ensureType(int) + 1;
}
```

## See Also:

[ensureType function](https://ballerina.io/learn/by-example/ensureType-function/)