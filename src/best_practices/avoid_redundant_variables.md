# Avoid redundant variables

The intention of redundant variables is to increase readability. In reality, it makes the code more verbose and difficult to understand. Any variable used only once is redundant and must be replaced with a value.

<h4><img align="center" height="30" src="../img/BadCode.png"> Bad Code</h4>

```bal
type Employee record {|
    string name;
    int age;
    string department;
|};

function getEmployee(string name, int age, string department) returns Employee {
    Employee emp = {name, department, age};
    return emp;
}
```

<h4><img align="center" height="30" src="../img/GoodCode.png"> Good Code</h4>

```bal
type Employee record {|
    string name;
    int age;
    string department;
|};

function getEmployee2(string name, int age, string department) returns Employee {
    return {name, department, age};
}
```