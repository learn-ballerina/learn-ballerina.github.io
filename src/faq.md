# Ballerina FAQ!

## What is Ballerina?

- [Ballerina](https://ballerina.io/) is a general-purpose, open-source programming language.
- It specializes in solving integration/API integration/network interactions & cloud-based problems by providing the right level of language abstractions and tools.
- Ballerina is NOT a JVM language.
- Ballerina is a programming language which is 
    - compiled : (Compiled languages are converted directly into machine code that the processor can execute. C, C++, Rust, Go are examples. In interpreted Languages, interpreters run through a program line by line and execute each command. PHP, Ruby, Python are examples.    )
    - type safe
    - concurrent
- Ballerina is neither an object oriented language nor a functional one.
    - While the language has objects, the development methods are not completely OOP-based.
    - Both objects and functions are first class concepts, giving developers the ability to choose the best option based on their requirements.   
- It has two implementations.
    - jBallerina - written in java to run on top of JVM. This is the first implementation to prove the language. 
    - nBallerina - Compiled using LLVM, directly to the platform architecture.

## Why do we need a new programming language?

What there is in the Ballerina language and platform that could not be done except with a new language and platform?

- networking: networking abstractions for services and clients
- data and types: support for plain data(anydata), structured data (maps and arrays), collections (tables) and the ability to transform to and from json/xml easily. 
- concurrency: The graphical view of a function as a sequence diagram provided by the VS Code extension shows not only how the function accesses network services, but also the concurrent logic of the function. The language's worker-based concurrency primitives are designed for this graphical view. Isolation concept and readonly types etc which guarantee compile-time safety for data races. 

## Is Ballerina an object-oriented language?

- Ballerina is neither an object-oriented language nor a functional one.
- While the Language has objects, the development methods are not completely OOP-based.
- Both objects and functions are first-class concepts, giving developers the ability to choose the best option based on their requirements.
- It is data-oriented.

## Why is Ballerina data-oriented?

- The primary focus is on represent, describe, communicate pure data.
- Ballerina makes it easy for the user to transfer, declare, manipulate, process and query the data.

## Is Ballerina JVM language?

Ballerina is **NOT a JVM language**.
It has two implementations.
- jBallerina - written in java to run on top of JVM. This is the first implementation as a proof-of-concept of the Language. Although it's implemented on top of the JVM, it does not embrace the JVM. It is designed with the goal that we can do another implementation that does not use the JVM, and the user code will run unchanged. (We do provide JVM interop features, but that is specifically for when you want to interop with existing JVM code.)
- nBallerina - Compiled using LLVM, directly to the platform architecture.

## Is Ballerina a language or platform?

Ballerina is a new programming language and is also a platform.

**Language:** This is the core and it's the part that's defined in the language specification.

**Platform:** the Language has been designed in conjunction with key components of the surrounding ecosystem, which we called platform. 
The platform includes:
- a standard library
- a centralized module repository, and the tooling needed to support that
- a documentation system (based on Markdown)
- a testing framework
- extensions/plug-ins for popular IDEs (notably Visual Studio Code).

## What are the unique features of Ballerina? 

- **Data-oriented** - Ballerina makes it easy for the user to transfer, declare, manipulate, process and query the data.
- **Network oriented** - Ballerina has language constructs/concepts which capture network primitives. (E.g., type system concepts to easily bind data coming via network to language types, service types, client types, etc.)
- **Graphical representation** - Can easily explain network interactions via sequence diagrams. Each program has both a textual syntax and an equivalent graphical form based on sequence diagrams
- **Enterprise-grade application development** - Built-in concurrency, Explicit error handling, transactions,  full life cycle management concepts including testing, documenting, configurability, dependency management & versioning
- **Cloud-Native** - Reduces the gap between development to deployment and makes it easier for the developer to write the application and instruct how it should be deployed in the cloud.
 
## What are the special things about Ballerina type system?

**Ballerina is a statically typed language.**

That means that every variable has a type that is known at compile time.

**Ballerina has structural type system.** 

A static type checker uses either the names or the structure of the types in order to compare them against other types. Checking against the name is nominal typing and checking against the structure is structural typing. 

So in Ballerina, type compatibility is identified by considering the structure of the value rather than just relying on the name of the type.

All mainstream object-oriented languages use nominal subtyping. For ex: Java  has no structural subtyping at all; all subtype relationships must be explicitly declared. 

**Ballerina has semantic subtyping**. 

The syntax - describes which strings of of characters comprise a valid program. i.e., the form of the language. 

The semantics - describes what syntactically valid programs mean, what they do. i.e. the meaning of the language.

Semantic subtyping is an approach for defining subtyping relation based on set-theoretic models, rather than syntactic rules.

Type is a set of values. When is an assignment, `x = y` legal? 

There are at least two possible answers:

1. When `x` and `y` are of equal types 

   Structural type checking decides that. 

2. When `y`’s type can be “converted” to `x`’s type 

    - Once we consider types as set of values, we realize immediately one set may be a subset of another set.
    - When the set of values in one type, `T`, is a subset of the set of values in another type, `U`, we say that `T` is a subtype of `U`.
    - There are two main approaches for defining the subtyping relation: 
        - syntactic approach - it is defined by means of a formal system of deduction rules
        - semantic approach - It is defined based on set theories. The subtyping relation is defined as inclusion of sets denoting types. Ballerina is using this approach. 

Semantic subtyping is most useful for expressing types of tree-structured data, such as JSON.

**Ballerina has network aware type system.** 

Ballerina's type system is specifically focused on aiding the development of networked and distributed applications. It has constructs that seamlessly map to network programming concepts such as services and network resources.

## What are the values and types in Ballerina?

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

## What is Langlib?

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

### Using method call syntax

```go
import ballerina/io;

public function main() {
    // Can call using the conventinent method-call syntax.
    string s = "hello World".substring(1, 2);

    io:println(s);
}
```

### Using as a module function
```go
import ballerina/io;

public function main() {
    // Can call as a langlib module function. No need to import explicitly. 
    string s = string:substring("Hello World", 1, 2);

    io:println(s);
}
```

## What is the future of the Language?

The long-term vision for Ballerina includes a number of important features which are not yet implemented but which have a foundation in existing language features.
- Event streams (unbounded streams of records with timestamps). Be able to both generate them and query them (using various kinds of windows). Related to this is more first-class support for a client subscribing to a stream of events from the server.
- Network security. Language support to help the user avoid network security problems (we have experimented with a feature similar to tainting in Perl); this can leverage the explicitness of network interactions in Ballerina.
- Workflow. Support long-running process execution. Be able to suspend a program and later resume it as a result of an incoming network message. This also requires that transactions get better support for compensation.

## Is Ballerina only for WSO2 usage?

Ballerina's development is funded by WSO2 and WSO2's ultimate goal is to create a product that is useful to its customers. 
But Ballerina is not itself the product: both Ballerina the Language and Ballerina the platform are free and open source. 





