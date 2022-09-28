# String

- A string is an sequence of zero or more Unicode characters.
- A string may include Unicode noncharacters, such as 0xFFFE and 0xFFFF.
- The string basic type is inherently immutable.
- A  character is represented by a string of length 1.
- There is a built-in subtype `string:Char` for single character strings. 
- The `[i]` expression on a string value points to the character at index i. The index positions on the string type starting with zero.
- Supported operators
    - Equality Check  - `==` operator : checks for the same characters. 
    - Comparison operators - `<` , `<=`, `=>`, `>` :  compalre code points. 
    - Concatenation - `+` operator 

---
**NOTE:**

- Unicode is an encoding for textual characters which is able to represent characters from many different languages.
- Each character is represented by a unicode code point.
- A code point is an integer value that uniquely identifies the given character. 
- Unicode characters can be encoded using different encodings, like UTF-8 or UTF-16. 
- These encodings specify how each character's Unicode code point is encoded, as one or more bytes.
---

#### Sample

```go
import ballerina/io;

public function main() {
    //Enclosed within double quotes
    string s = "Hello World";
    io:println(s);

    //Index based access
    io:println(s[4]);

    // Unicode code point using one or more hex digits `\u{H}`.
    string symbol = "\u{1F483}";
    io:println(symbol);

    string:Char c = "!";
    io:println(c);
    
    string greeting = s + c;
    io:println(greeting);
}

```

#### Output

```
Hello World
o
💃
!
Hello World!
```
