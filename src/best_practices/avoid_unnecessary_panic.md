# Avoid unnecessary usage of panic 

- An error value can also result in abrupt termination via panic if used in a panic statement.
- Panicking is done via `panic` and `checkpanic` 
- Panic causes the worker/program to terminate unless trapped by the caller
- It is OK for code to intentionally panic in a situation where a bug in the program's logic has been detected, which should be an extremely rare case. e.g.:
  - programming bug
  - division by zero
  - out of memory

- Business logic-related errors would usually be returned.

<h3>Usage of checkpanic</h3>

- `checkpanic` may be used if you want to terminate the program when a particular expression (or action) evaluates to an error.
- It should be extremely rare to use `checkpanic`.

### See Also:

- [Error handling](https://ballerina.io/learn/language-basics/#error-handling)
