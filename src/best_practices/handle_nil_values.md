# Handle Nil values

Use the Elvis operator with proper default values or use errors when returning.

Elvis operator is a conditional operator that can be used to handle nil values. It evaluates an expression and, if the value is nil, executes the second expression. The Elvis operator takes two operands and uses the `?:` symbol to form them.

<h3>Example 1:</h3>

<h4><img align="center" height="30" src="../img/BadCode.png"> Bad Code</h4>

```bal
int? age = ();
int validAge = <int>age;
```

<h4><img align="center" height="30" src="../img/GoodCode.png"> Good Code</h4>

```bal
int? age = ();
int validAge = age ?: 0;
```

<h3>Example 2:</h3>

<h4><img align="center" height="30" src="../img/BadCode.png"> Bad Code</h4>

```bal
string? name = ();
string validName = name.toString();
```

<h4><img align="center" height="30" src="../img/GoodCode.png"> Good Code</h4>

```bal
string? name = ();
string validName = name ?: "";
```

<h3>Example 3:</h3>

<h4><img align="center" height="30" src="../img/BadCode.png"> Bad Code</h4>

```bal
function getUsers() returns string[] {
    string[]? users = loadUsers();
    if users is string[] {
        return users;
    }
    return [];
}

function loadUsers() returns string[]? {
    //loading user code from DB or file etc
}
```

<h4><img align="center" height="30" src="../img/GoodCode.png"> Good Code</h4>

Refer to the following options. We can use the elvis operator or can return error by explicitly checking for `nil`. Checking for nil is better than returning unrealistic default value in most cases.

<h4>Option 1: </h4>

```bal
function getUsers() returns string[] {
    string[]? users = loadUsers();
    return users ?: [];
}
```

<h4>Option 1: </h4>

```bal
function getUsers() returns string[]|error {
    string[]? users = loadUsers();
    if users is () {
        return error("Error in loading users");
    }
    return users;
}
```

### See Also:

- [nil](https://pre-prod.ballerina.io/learn/language-basics/#nil)
