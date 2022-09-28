# Langlib Functions

This is a library which provides fundamentnal operations on built-in datatypes. There is a `ballerina/lang.T` module for each built-in type `T` and they are automatically imported using `T` prefix.

We can call Langlib functions in two ways and both produce the same result. 

Currently there is Langlib module for following built-in types.

- For Simple Types - `lang.boolean`, `lang.int`, `lang.float`, `lang.decimal`
- For Structured Types - `lang.array`, `lang.map`, `lang.table`
- For Sequence Types - `lang.string`, `lang.xml`
- For Behavioral Types - `lang.object`, `lang.error`, `lang.stream`, `lang.future`, `lang.typedesc`
- For common types, provides functions that work on values of more than one basic type - `lang.value` 

Other than above modules for built-in types Langlib has following modules as well.

- For functions related to language runtime - `lang.runtime`
- For functions related to transactions - `lang.transaction` 

Langlib functions can be called in two different ways. 

## Using method call syntax

```go
import ballerina/io;

public function main() {
    // Can call using the conventinent method-call syntax.
    string s = "hello World".substring(1, 2);

    io:println(s);
}
```

## Using as a module function
```go
import ballerina/io;

public function main() {
    // Can call as a langlib module function. No need to import explicitly. 
    string s = string:substring("Hello World", 1, 2);

    io:println(s);
}
```