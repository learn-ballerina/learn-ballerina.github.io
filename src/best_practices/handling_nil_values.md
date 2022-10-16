# Handling Nil Values

Use Elvis operator.

Elvis operator is a conditional operator that can be used to handle nil values. It evaluates an expression and if the value is nil, executes the second expression. The Elvis operator takes two operands and uses the `?:` symbol to form it.

**Example 1:** 

<h4><img align="center" height="30" src="../img/BadCode.png"> Bad Code</h4>

```bal
int? age = ();
int validAge = <int>age;
```

<h4><img align="center" height="30" src="../img/GoodCode.png"> Good Code</h4>

```
int? age = ();
int validAge = age ?: 0;
```

**Example 2:**

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

**Example 3:**

<h4><img align="center" height="30" src="../img/BadCode.png"> Bad Code</h4>

```bal
function getUsers() returns string[]|error {
   string[]? users = check httpClient->get("/users");
   if users is string[] {
       return users;
   }
   return [];
}
```

<h4><img align="center" height="30" src="../img/GoodCode.png"> Good Code</h4>

```bal
function getUsers() returns string[]|error {
    string[]? users = check httpClient->get("/users");
    return users ?: [];
}
```