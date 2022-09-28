# Object

#### Why Objects?

-  Object encapsulates data with functions that operate on the data.

#### Introduction
- An object consists of named members, 
    - field -  stores a value
    - method - a function that can be invoked on the object
- When a method is invoked on an object, the function can access the object using the `self` variable.
- It is not possible for an object to have a field and a method with the same name.   
- Need to use the `new` operator with a `class` to get an object. 
- There are three visibility levels.
    - private - only visible within the object and its functions.
    - public - visible to any module.
    - protected - visible only within the same module.


#### Init Function

- The `init` method in the class initializes the object. 
- Arguments to `new` are passed as arguments to `init`.
- The return type of `init` must be a subtype of `error?`. 
    - If `init` returns `()`: The `new` returns the newly constructed object. 
    - If `init` returns an `error` : The `new` returns that error. 
    - If `init` does not specify a return type: 
        - the return type defaults to `()`.
        - Then `new` will never return an error.


#### Sample

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./../../code/object.bal) -->
<!-- The below code snippet is automatically added from ./../../code/object.bal -->
```bal
import ballerina/io;

class Customer {
    private string firstName;
    string lastName;
    public int id;

    function init(string firstName = "A", string lastName = "B", int id = 0) {
        self.firstName = firstName;
        self.lastName = lastName;
        self.id = id;
    }

    function getFullName() returns string {
        return self.firstName + " " + self.lastName;
    }
}

public function main() {
    //Calls init function with all parameters
    Customer cust1 = new ("Anupama", "Pathirage", 10032);
    string fullName = cust1.getFullName(); //Access  a method
    io:println(fullName);

    //Default values are used 
    Customer cust2 = new;
    int id = cust2.id; // Access a public id;
    io:println(id);

    //This inintialization is useful when the type of the object 
    //cannot be determined based on nthe context(e.g., when the LHS is var or union)
    var cust3 = new Customer("Bill", "Gates", 10031);
    string lastName = cust3.lastName;
    io:println(lastName);
}
```
<!-- The below code snippet is automatically added from ./../../code/object.bal -->
<!-- MARKDOWN-AUTO-DOCS:END -->

#### Output

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./../../code/object.bash) -->
<!-- The below code snippet is automatically added from ./../../code/object.bash -->
```bash
Anupama Pathirage
0
Gates
```
<!-- The below code snippet is automatically added from ./../../code/object.bash -->
<!-- MARKDOWN-AUTO-DOCS:END -->