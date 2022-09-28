# Any

- The `any` type consisting of all values other than errors. A value belongs to the `any` type if and only if its basic type is not error.
- Thus all values belong to the type any|error. 
- Equivalent to a union of all non-error basic types.
- Langlib `lang.value` module contains functions that apply to multiple basic types.
- A variable of type any can be cast to a specific type using the `< >` symbol enclosure.

#### Sample

```go
import ballerina/io;

public function main() {
    // Can cast `any` to specific type.
    any x = 1.4;
    float n = <float>x;
    io:println(n);

    if (x is decimal) {
        io:println("x is decimal");
    } else if (x is string) {
        io:println("x is string");
    } else if (x is float) {
        io:println("x is float");
    }
}
```

#### Output

```
1.4
x is float
```