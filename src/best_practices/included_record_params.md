# Using included record parameters

Including record fields as named arguments in a function provides a consistent experience to the caller.

<h4><img align="center" height="30" src="../img/alert.png"> Without included record parameters</h4>

The function register() has an `int` parameter `admissionYear` and a record parameter of the `Student` record type. This function can be called by directly passing a value of the `Student` record type as follows.

```bal
import ballerina/io;

type Student record {|
    string firstName;
    string? middleName = ();
    int age;
|};

public function main() {
    register(2005, {firstName: "John", age: 14});
}

function register(int admissionYear, Student student) {
    io:println(string `Registering ${student.firstName} for the year ${admissionYear}`);
    //Other logic..
}
```

<h4><img align="center" height="30" src="../img/GoodCode.png"> Better approach</h4>

Alternatively, to pass individual named arguments for the different fields, it is possible to use an included record parameter. Note the `*` before the type.

Refer to the sample code to see different ways of passing parameters. 

This way of including record fields as named arguments in a function provides a consistent experience to the caller.

```bal
import ballerina/io;

type Student record {|
    string firstName;
    string? middleName = ();
    int age;
|};

public function main() {
    register(admissionYear = 2023, firstName = "John", age = 14);
    register(2023, firstName = "Anne", age = 12);
    register(2024, {firstName: "Mary", age: 11});
}

function register(int admissionYear, *Student student) {
    io:println(string `Registering ${student.firstName} for the year ${admissionYear}`);
    //Other logic..
}

```