# Boolean

- The `boolean` type has two values: `true`, `false`.
- The logical operators, `!` , `||` and `&&` are  supported with boolean types. 
- The `||` and `&&` operators support the same short-circuit behavior as in C. 

#### Sample

<a href="https://play.ballerina.io/?gist=d06ca052f4412b241a4afd1a50a8afbd&file=boolean.bal" target="_blank">Run in Playground   </a>

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./../../code/boolean.bal) -->
<!-- The below code snippet is automatically added from ./../../code/boolean.bal -->
```bal
import ballerina/io;

public function main() {
    boolean b1 = true;
    boolean b2 = false;

    // Logical operators with boolean.
    boolean b3 = !b1;
    io:println(b3);

    boolean b4 = b1 && b2;
    io:println(b4);

    boolean b5 = b1 || b2;
    io:println(b5);
}
```
<!-- The below code snippet is automatically added from ./../../code/boolean.bal -->
<!-- MARKDOWN-AUTO-DOCS:END -->


#### Output

```
false
false
true
```