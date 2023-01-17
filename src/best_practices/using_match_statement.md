# Using match statement

The `match` statement is similar to switch statement in C and JavaScript. It matches the value, not the type.
If-else conditional branches are great for variable conditions that result into a boolean, whereas match statements are great for fixed data values.

<h4><img align="center" height="30" src="../img/BadCode.png"> Bad Code</h4>

```bal
function getDay(int date) returns string {
    if date == 0 {
        return "Sunday";
    } else if date == 1 {
        return "Monday";
    } else if date == 2 {
        return "Tuesday";
    } else if date == 3 {
        return "Wednesday";
    } else if date == 4 {
        return "Thursday";
    } else if date == 5 {
        return "Friday";
    } else if date == 6 {
        return "Saturday";
    } else {
        return "Invalid";
    }
}
```

<h4><img align="center" height="30" src="../img/GoodCode.png"> Good Code</h4>

```bal
function getDay(int date) returns string {
    match date {
        0 => {
            return "Sunday";
        }
        1 => {
            return "Monday";
        }
        2 => {
            return "Tuesday";
        }
        3 => {
            return "Wednesday";
        }
        4 => {
            return "Thursday";
        }
        5 => {
            return "Friday";
        }
        6 => {
            return "Saturday";
        }
        _ => {
            return "Invalid";
        }
    }
}
```

### See Also:

- [Match statement](https://ballerina.io/learn/by-example/match-statement/)