# Tuple

- Creates a list of values just like arrays.
- The main difference between arrays and tuples is that an array has only one type applicable to every member of its list, whereas in a tuple type you can individually specify the types for each member.


#### Sample

```go
import ballerina/io;

public function main() {

    // Defines the type of `a` as a pair that consists of an `int` and a `string`.
    [int, string] t = [10, "John"];
    io:println(t);
    
    // Tuple destructuring:The assignment statement assigns values of the 
    // tuple on the right to the variables on the left.
    int i;
    string s;
    [i, s] = t;
    io:println(i);
    io:println(s);

    // Invokes a function that returns a tuple.
    var [q, r] = divideBy10(6);
    io:println("06/10: ", "quotient=", q, " remainder=", r);

    // To ignore a value in a tuple, use `_`.
    var [q1, _] = divideBy10(57);
    io:println("57/10: ", "quotient=", q1);
}

// This function returns a tuple of two integers.
function divideBy10(int d) returns ([int, int]) {
    int q = d / 10;
    int r = d % 10;
    return [q, r];
}

```

#### Output

```
[10,"John"]
10
John
06/10: quotient=0 remainder=6
57/10: quotient=5
```