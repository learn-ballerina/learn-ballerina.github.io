# Array

- Arrays are sequential data structures consisting of values of the same type. `T[]` is an array of `T`.
- Arrays are mutable.
- Can access the individual elements of this array using the `[i]` notation. Array indexing starts with zero.
- The comparison operators - `==` or `!=` : perform a deep comparison.  The two arrays are equal if they have the same members in the same order.
- Unless the length is specified or inferred from the value, arrays are unbounded by length. That means they can grow up to any length based on the given index. 

#### Sample

```go
import ballerina/io;

public function main() {
    //Creates an int array by specifiying an array literal. 
    //Length is not speicfied, so this will create unbounded array
    int[] v = [1, 2, 3];
    io:println(v);
    io:println("Length of array v:", v.length());

    //Arrays can grow up to any length based on the given index. 
    v[9] = 10;
    io:println(v);
    io:println("Length of array v:", v.length());

    //Length is specified when creating,so  it can have only 3 elements maximum. 
    //If we try to store more than 3 elements it gives errors.
    int[3] v2 = [1,2,3];
    io:println(v2);

    //Access elements by index.
    io:println(v2[1]);

    //Multi dimensional array. 
    int[][] v3 = [[1, 2, 3], [10, 20, 30], [5, 6, 7]];
    io:println(v3);
    io:println(v3.length());

    //The `*` is used to infer the array size from array literal. 
    //Cannot assing more elements than the initial size. 
    int[*] v4 = [1, 2, 3, 4];
    io:println(v4.length());   
}
```

#### Output

```
[1,2,3]
Length of array v:3
[1,2,3,0,0,0,0,0,0,10]
Length of array v:10
[1,2,3]
2
[[1,2,3],[10,20,30],[5,6,7]]
3
4
```