# Nil

- The nil type contains a single value, called nil, which is used to represent the absence of any other value.
- This is the only basic type which consists of a single type.
- The nil value is written as `()`. 
- The nil value can also be written `null`, for compatibility with JSON; the use of `null` should be restricted to JSON-related contexts. 
- Any function that ends without a return statement implicitly returns nil.
- To declare the value of any type `T` as nil : `T? x = ();`

## Elvis Operator

- The Elvis Operator is represented by a question mark followed by a colon: `?:`

   ```
   first operand ?: second operand
   ```
- If `first operand` isn't nil, then it will be returned. If it is nil, then the `second operand` will be returned.

#### Sample

```go
import ballerina/io;

public function main() {

    int? i = ();
    io:println(i);

    json j = null;
    io:println(j);

    //Elvis Operator
    int k = i ?: 0;
    io:println(k);
}
```

#### Output

```


0
```