# Use precise types

<h3>Avoid overuse of var</h3>

Type inference allows the program to infer the actual data type of variables.

The use of `var` is a convenient way to use a generic type for a local variable and helps avoid repeated type declarations.

Code is usually more readable and maintainable when the type is declared explicitly. Therefore `var` should be used sparingly for variables used within a very limited scope, like in a foreach loop. Overusing it makes the code harder to understand.

<h4><img align="center" height="30" src="../img/alert.png"> Overuse of var</h4>

```bal
var name = "Alice";
var age = 30;
addUser(name, age);
```

<h4><img align="center" height="30" src="../img/GoodCode.png"> Good Code</h4>

```bal
string name = "Alice";
int age = 30;
addUser(name, age);
```

<h3>Use application-defined types</h3>

Always use more application-defined type instead of `json`, `any`, `anydata` when you have more to do with that data.

<h4><img align="center" height="30" src="../img/BadCode.png"> Bad Code</h4>

```bal
http:Client httpClient = check new ("http://localhost:9090");
json albums = check httpClient->/albums;
```

<h4><img align="center" height="30" src="../img/GoodCode.png"> Good Code</h4>

```bal
type Album readonly & record {|
    string title;
    string artist;
|};

http:Client httpClient = check new ("http://localhost:9090");
Album[] albums = check httpClient->/albums;

```

### See Also:

[Type inference](https://ballerina.io/learn/language-basics/#type-inference)