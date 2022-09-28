# Map

- Defined as `map<T>` where `T` is the map's constraint type.
- It is a mapping from keys (that are strings) to values of the type specified as the map’s constraint type.
- The comparison operators - `==` or `!=` : perform a deep comparison. The two maps are equal if they have the same set of keys and the values for each key are equal.
- Maps are mutable, and `m["x"]` will return the integer value stored in `"x"`, or `nil` if missing.

#### Sample

```go
import ballerina/io;

public function main() {
    string computedKey = "a" + "b";

    // Creates a `map` constrained by the type `int`.
    // Computed keys, where the value of the key expression evaluated at the runtime 
    // can be used within brackets. 
    map<int> m = {
        "x": 100,
        "y": 200,
        [computedKey] : 500
    };
    io:println(m);

    // Adds a new entry for `z`.
    m["z"] = 500;
    io:println(m);

    // Gets the entry for `x`.
    int? v = m["x"];
    io:println(v);

    //Gets an entry for non existing key.
    v = m["a"];
    io:println(v);

     // Gets value using Langlib function.
     int i = m.get("x");
     io:println(i);

    //Get the list of keys.
    string[] keys = m.keys();
    io:println(keys);
}
```

#### Output

```
{"x":100,"y":200,"ab":500}
{"x":100,"y":200,"ab":500,"z":500}
100

100
["x","y","ab","z"]
```
