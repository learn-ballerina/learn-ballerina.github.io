# union

- A union type describes a value that can be one of several types.
- Why union types?
    - Union is useful when the program expects a value to be either many different types. e.g., A  parameter to the function or return value can be either  `int` or `float` etc.     
    - In traditional object-oriented code, we have to abstract over the two types by creating a hierarchy of types to achieve this.
- `T1|T2|T3` represents a union of the sets  `T1`, `T2` and `T3`. 
    - e.g., The type `int|float|string` can hold either `int`, `float` or `string`.
- The  `is` operator is used to check whether the value belongs to a specific type.   The type will be narrowed with the use of the `is` operator. Narrowing occurs when Ballerina can deduce a more specific type for a value based on the structure of the code.
- `T1|()` can be written as `T?` as well.

#### Sample

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./../../code/union.bal) -->
<!-- The below code snippet is automatically added from ./../../code/union.bal -->
```bal
import ballerina/io;

type Address record {
    string city;
    string country;
    int code;
};

//Instead of writing longer union, it is  easy to  use a  type defintion.
type Location Address|string|int;

public function main() {
    int|string|float u1 = "this is a string";
    if u1 is int {
        io:println("union contains a int  value");
    } else if u1 is float {
        io:println("union contains a float  value");
    } else { //Type narrowed  to  string  here.
        io:println("union contains a string  value");
    }

    //Union types with nil.
    int|() i1 = 4;
    io:println(i1);
    float? f1 = ();
    io:println(f1);

    //Union type with type descriptors
    Location loc = "UK";
    io:println(loc);
}
```
<!-- The below code snippet is automatically added from ./../../code/union.bal -->
<!-- MARKDOWN-AUTO-DOCS:END -->

#### Output

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./../../code/union.bash) -->
<!-- The below code snippet is automatically added from ./../../code/union.bash -->
```bash
union contains a string  value
4

UK
```
<!-- The below code snippet is automatically added from ./../../code/union.bash -->
<!-- MARKDOWN-AUTO-DOCS:END -->


