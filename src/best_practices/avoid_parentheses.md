# Avoid parentheses in if statement

Ballerina requires braces in if statements. But, parentheses are not required around the condition.


<h4><img align="center" height="30" src="../img/BadCode.png"> Bad Code</h4>

```bal
if (x == 0) {
    //
}
``` 


<h4><img align="center" height="30" src="../img/GoodCode.png"> Good Code</h4>

```bal
if x == 0 {
    //
}
```