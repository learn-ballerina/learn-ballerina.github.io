# Ballerina FAQ!

## What is Ballerina?

- It is a general-purpose, open-source programming language. 
- It specializes in solving integration/API integration/network interactions & cloud-based problems by providing the right level of language abstractions and tools.

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
 
## What are the special things about Ballerina type system?

**Ballerina is a statically typed language.**

That means that every variable has a type that is known at compile time. 

**Ballerina has a structural type system.**

A static type checker uses either the names or the structure of the types in order to compare them against other types. Checking against the name is nominal typing and checking against the structure is structural typing. So in Ballerina, type compatibility is identified by considering the structure of the value rather than just relying on the name of the type. All mainstream object-oriented languages use nominal subtyping. For e.g.: Java has no structural subtyping at all; all subtype relationships must be explicitly declared. 

**Ballerina has semantic subtyping.**

The syntax - describes which strings of characters comprise a valid program. i.e., the form of the Language. 

The semantics - describes what syntactically valid programs mean, and what they do. i.e. the meaning of the Language. 

Semantic subtyping is an approach for defining subtyping relations based on set-theoretic models, rather than syntactic rules.

**Ballerina has network aware type system.** 

Ballerina's type system is specifically focused on aiding the development of networked and distributed applications. It has constructs that seamlessly map to network programming concepts such as services and network resources.

## What is the future of the Language?

The long-term vision for Ballerina includes a number of important features which are not yet implemented but which have a foundation in existing language features.
- Event streams (unbounded streams of records with timestamps). Be able to both generate them and query them (using various kinds of windows). Related to this is more first-class support for a client subscribing to a stream of events from the server.
- Network security. Language support to help the user avoid network security problems (we have experimented with a feature similar to tainting in Perl); this can leverage the explicitness of network interactions in Ballerina.
- Workflow. Support long-running process execution. Be able to suspend a program and later resume it as a result of an incoming network message. This also requires that transactions get better support for compensation.

## Is Ballerina only for WSO2 usage?

Ballerina's development is funded by WSO2 and WSO2's ultimate goal is to create a product that is useful to its customers. 
But Ballerina is not itself the product: both Ballerina the Language and Ballerina the platform are free and open source. 





