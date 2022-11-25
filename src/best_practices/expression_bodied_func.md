# Use expression-bodied functions

Expression-bodied functions can be used when the body is just a return statement.

<h4><img align="center" height="30" src="../img/BadCode.png"> Bad Code</h4>

```bal
function isValid(string username) returns boolean {
    return matchesCrieteria(username) && isAvailable(username);
}
```

<h4><img align="center" height="30" src="../img/GoodCode.png"> Good Code</h4>

```bal
function isValid(string username) returns boolean => matchesCrieteria(username) && isAvailable(username);
```