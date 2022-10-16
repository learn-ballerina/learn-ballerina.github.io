# Generate  String by Concatenating Values

<h4><img align="center" height="30" src="../img/BadCode.png"> Bad Code</h4>

```bal
int age = 10;
string name = "Anne";
log:printInfo("Child name is " + name + " and age is " + age.toString());
```

<h4><img align="center" height="30" src="../img/GoodCode.png"> Good Code</h4>

```bal
int age = 10;
string name = "Anne";
log:printInfo(string `Child name is ${name} and age is ${age}`);
```