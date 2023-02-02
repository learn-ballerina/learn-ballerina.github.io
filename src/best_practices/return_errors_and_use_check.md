# Return errors and use the check

Do not return invalid values when an error occurs; instead return the error.
As much as possible, avoid the use of T|error in variable declarations. Instead, use `check` and add `error` to the return type

<h4><img align="center" height="30" src="../img/BadCode.png"> Bad Code</h4>

```bal
function getStudentYear(int id) returns int {
    string|error name = getName(id);
    if name is error {
        return -1;
    } else {
        int|error ret = getYear(name);
        if ret is error {
            return -1;
        } else {
            return ret;
        }
    }
}

//Helper functions
function getName(int id) returns string|error {
    return error("Student not found");
}

function getYear(string name) returns int|error {
    return error("Student year not found");
}
```

<h4><img align="center" height="30" src="../img/GoodCode.png"> Good Code</h4>

```bal
function getStudentYear(int id) returns int|error {
    string name = check getName(id);
    return getYear(name);
}

//Helper functions
function getName(int id) returns string|error {
    return error("Student not found");
}

function getYear(string name) returns int|error {
    return error("Student year not found");
}
```

### See Also:

- [Error handling](https://ballerina.io/learn/language-basics/#error-handling)
