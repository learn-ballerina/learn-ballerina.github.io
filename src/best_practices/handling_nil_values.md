# Handling Nil Values

Elvis operator is a conditional operator that can be used to handle nil values. It evaluates an expression and if the value is nil, executes the second expression. The Elvis operator takes two operands and uses the `?:` symbol to form it.

**Example 1:** 

```bal
int? age = ();
int validAge = <int>age;
```

```
int? age = ();
int validAge = age ?: 0;
```

**Example 2:**

```bal
string? name = ();
string validName = name.toString();
```

```bal
string? name = ();
string validName = name ?: "";
```

**Example 3:**

```bal
function getUsers() returns string[]|error {
   string[]? users = check httpClient->get("/users");
   if users is string[] {
       return users;
   }
   return [];
}
```

```bal
function getUsers() returns string[]|error {
    string[]? users = check httpClient->get("/users");
    return users ?: [];
}
```