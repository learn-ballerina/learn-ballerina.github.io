# Generate string by concatenating values

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