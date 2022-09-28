# Anydata

- This is used to represent plain data.
- It can be defined as:
    ```
    () | boolean | int | float | decimal
    | string | xml
    | anydata[] | map<anydata> | table<map<anydata>>
    ```
- It is a subtype of `any`. 
- The `==` and `!=` operators on anydata test for deep equality.
- The equality operation also takes care of cycles within anydata structure values.

#### Sample

```bal
import ballerina/io;
public function main() {
    anydata[] fArr = [1.34, 3.43];
    float f = <float>fArr[0];
    io:println(f);
}
```

#### Output

```
1.34
```
