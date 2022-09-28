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

Let's learn the Ballerina types in detail.

- [Simple Basic Types](simple_basic_types.md)
    - [Integer](simple_basic_types/integer.md)
    - [Float](simple_basic_types/float.md)
    - [Decimal](simple_basic_types/decimal.md)
    - [Boolean](simple_basic_types/boolean.md)
    - [Nil](simple_basic_types/nil.md)

- [Sequence Types](sequence_types.md)    
    - [String](sequence_types/string.md)
        - [String Template Literal](sequence_types/string/string_template.md)
    - [XML](sequence_types/xml.md)

- [Structured Types](structured_types.md)
    - [Lists](structured_types/lists.md)
        - [Array](structured_types/lists/array.md)
        - [Tuple](structured_types/lists/tuple.md) 
    - [Mappings](structured_types/mappings.md)
        - [Map](structured_types/mappings/map.md)
        - [Record](structured_types/mappings/record.md)      
    - [Table](structured_types/table.md)

- [Behavioral Types](behavioral_types.md)
    - [object](behavioral_types/object.md)
    - [stream](behavioral_types/stream.md)
    - [error](behavioral_types/error.md)
    - [typedesc](behavioral_types/typedesc.md)
    - [function](behavioral_types/function.md)
    - [future](behavioral_types/future.md)

- [Other Types](other_types.md)
    - [any](other_types/any.md)
    - [anydata](other_types/anydata.md)
    - [byte](other_types/byte.md)
    - [json](other_types/json.md)
    - [union](other_types/union.md)