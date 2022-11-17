# Simplify mapping constructor

If the variable name is equal to the key of mapping constructor we can simplify code `{k: k}` to `{k}`.

<h4><img align="center" height="30" src="../img/BadCode.png"> Bad Code</h4>

```bal
type Student record {|
    string name;
    int age;
    string city;
|};

function registerStudent(string name, int age) {
    Student s = {name: name, age: age, city: "London"};
    //...
}
```

<h4><img align="center" height="30" src="../img/GoodCode.png"> Good Code</h4>

```bal
type Student record {|
    string name;
    int age;
    string city;
|};

function registerStudent(string name, int age) {
    Student s = {name, age, city: "London"};
    //...
}
```