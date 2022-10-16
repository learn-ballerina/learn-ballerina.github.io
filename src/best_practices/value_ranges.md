# Work with value ranges

Use range expressions.

<h4><img align="center" height="30" src="../img/BadCode.png"> Bad Code</h4>

```bal
function processData(string[] data) {
    int index = 0;
    foreach var val in data {
        index += 1;
        if (index == 1) {
            continue; // Need to skip the first value in array
        }
        io:println(val);
    }
}
```

- Need to maintain a seperate index.
- Need to check whether value equals to one in each iteration.

<h4><img align="center" height="30" src="../img/GoodCode.png"> Good Code</h4>

```bal
function processData(string[] data) {
    foreach int lineNo in 1 ..< data.length() {
        io:println(data[lineNo]);
    }
}
```