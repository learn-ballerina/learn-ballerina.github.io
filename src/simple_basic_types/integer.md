# Integer

- The type `int` is an integer data type in a 64 bit signed representation. (i.e. signed integers than can fit into 64 bits using a two's complement representation).  This is similar to `long` in Java. 
- Range: `-9,223,372,036,854,775,808` and `9,223,372,036,854,775,807`
- Integer overflow results in a runtime error.
- The integer literals can be declared either in decimal or hexadecimal format (not octal).
- Supported Operators
    - Basic arithmetic operators : `+` ,`-` , `*` , `/`, and `%` 
    - Comparison operators : `==` , `!=`, `<` , `>`, `<=`, `>=` 
    - Compound assignment operations :  `+=` & `-=` 
    - Bitwise operators : `&`, `|` , `^` , `~` , `<<` and `>>`

#### Sample:

```go
import ballerina/io;

public function main() {
    //Integer literal in decimal.
    int m = 100;
    io:println(m);

    // Integer literal in hexadecimal.
    int n = 0xFFFF;
    io:println(n);

    // Use compound assignment operation`+=`. 
    n += m;
    io:println(n);
}
```

#### Output

```
100
65535
65635
```

