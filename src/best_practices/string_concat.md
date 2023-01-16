# Generate  string by concatenating values

Use string backtick template.

A backtick template is composed of a tag followed by a backtick string, enclosed within the backtick notation, where you can have expressions that are enclosed in `${...}`.

<h4><img align="center" height="30" src="../img/BadCode.png"> Bad Code</h4>

```bal
int age = 10;
string name = "Anne";
log:printInfo("Child name is " + name + " and age is " + age.toString());
```

- Need to convert non string values to strings.
- Need to handle spaces in the text properly along with the `+`. 


<h4><img align="center" height="30" src="../img/GoodCode.png"> Good Code</h4>

```bal
int age = 10;
string name = "Anne";
log:printInfo(string `Child name is ${name} and age is ${age}`);
```

## See Also:

- [Backtick templates](https://ballerina.io/learn/by-example/#backtick-templates)