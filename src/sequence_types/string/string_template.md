# String Template Literal

- String templates allows to embed expressions of simple basic types (except nil).


#### Sample

```go
import ballerina/io;

public function main() {
    string name = "Ballerina";
    int count = 2;

    // Create a `string` template embedding the `name` variable.
    string template = string `Hello ${name}, count is ${count} !!!`;

    // Print the defined string value.
    io:println(template);
}
```

#### Output

```
Hello Ballerina, count is 2 !!!
```