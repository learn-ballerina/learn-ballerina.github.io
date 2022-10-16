# Represent optionality 

Use nil (i.e. `()`) to represent optional values.

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