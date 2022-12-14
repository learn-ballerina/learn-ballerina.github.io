# Values and Types in Ballerina 

Ballerina programs operate on a rich universe of values. This universe of values is partitioned into a number of basic types; every value belongs to exactly one basic type. 

A variable has a type, which constrains what values the variable can hold.

Values are of four kinds, each corresponding to a kind of basic type:
1. Simple values - which are not constructed from other values;
    - `nil`, `boolean`, `int`, `float`, `decimal`
2. Structured values - which contain other values. They are containers for other values, which are called their members. 
    - `array`, `map`, `record`, `table`, `tuple`
3. Sequence values - which consists of an ordered sequence of zero or more constituent items, where the constituent items belong to the same basic type as the sequence value itself.
    - `string`, `xml`
4. Behavioral values- which are not just data
    - `function`, `object`, `error`, `stream`, `future`, `typedesc`
5. Other - which allows some flexibility to define custom types based on the combination of two or more types.
    - `any`, `anydata`, `json`, `byte` and `union` 

