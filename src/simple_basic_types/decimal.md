# Decimal

- The `decimal` type corresponds to a subset of IEEE 754-2008 128-bit decimal (radix 10) floating point numbers.
- Represents decimal fractions exactly by preserving precision. 
- Literal uses the suffix `d`.

#### Sample

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./../../code/decimal.bal) -->
<!-- The below code snippet is automatically added from ./../../code/decimal.bal -->
```bal
import ballerina/io;

public function main() {
    //Float doesn't represent decimal fractions exactly.
    float f = 100.10 - 0.01;
    io:println(f);

    //Decimal represents decimal fractions exactly.
    decimal d = 100.10 - 0.01;
    io:println(d);
}
```
<!-- The below code snippet is automatically added from ./../../code/decimal.bal -->
<!-- MARKDOWN-AUTO-DOCS:END -->

#### Output
```
100.08999999999999
100.09  
```