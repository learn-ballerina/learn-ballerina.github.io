# Generate  String by Concatenating Values

<h3><img align="center" height="30" src="../img/BadCode.png"> Bad Code</h3>

```bal
int age = 10;
string name = "Anne";
log:printInfo("Child name is " + name + " and age is " + age.toString());
```

```bal
int age = 10;
string name = "Anne";
log:printInfo(string `Child name is ${name} and age is ${age}`);
```