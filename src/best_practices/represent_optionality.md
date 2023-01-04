# Represent optionality 

Use nil (i.e. `()`) to represent optional values.

<h3>Example 1:</h3>

Use `nil` to indicate the unavailability of value.

<h4><img align="center" height="30" src="../img/BadCode.png"> Bad Code</h4>

```bal
type Employee record {
   string middleName = ""; //middleName is not specified
};
``` 


<h4><img align="center" height="30" src="../img/GoodCode.png"> Good Code</h4>

```bal
type Employee record {
   string? middleName = ();
};
```

<h3>Example 2:</h3>

Return `nil` to indicate the unavailability of value.

<h4><img align="center" height="30" src="../img/BadCode.png"> Bad Code</h4>

```bal
function getMarks(string name) returns int {
    if marks.hasKey(name) {
        return marks.get(name);
    }
    return -1;
}
```

<h4><img align="center" height="30" src="../img/GoodCode.png"> Good Code</h4>

```bal
function getMarks(string name) returns int? {
    if marks.hasKey(name) {
        return marks.get(name);
    }
    return();
}
```