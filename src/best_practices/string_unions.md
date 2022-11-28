# Handle unions of string constants

Use enums, unions of singletons, or unions of constants. Enum seems to be a better option out of those three.

Let's say we have a string variable named `department`, which can only be  `Finance`, `Engineering`, or `HR`.

<h4><img align="center" height="30" src="../img/BadCode.png"> Bad Code</h4>

"`bal
type Employee record {|
   string name;
   string department;
|};
 
Employee e = {name: "John Doe", department: "HR"};
```
 
- No idea what are the possible department types
- Users can specify any string value as the department. It is syntactically correct but incorrect from the scenario point of view. 

<h4><img align="center" height="30" src="../img/GoodCode.png"> Good Code</h4>

<h5>Option 1: Usage of enums </h5>

"`bal
enum Department {
   Finance,
   Engineering,
   HR
}
 
type Employee record {|
   string name;
   Department department;
|};
 
Employee e = {name: "John Doe", department: HR};
```

**Note:** Ballerina doesn't allow numeric enums.
   

<h5>Option 2: Unions of singletons</h5>

"`bal
type Department "Finance"|"Engineering"|"HR";
 
type Employee record {|
   string name;
   Department department;
|};
 
Employee e = {name: "John Doe", department: "HR"};
```
 
<h5>Option 3: Unions of constants</h5>

"`bal
const Eng = "Engineering";
const Fin = "Finance";
const HR = "HR";
 
type Department Eng|Fin|HR;
 
type Employee record {|
   string name;
   Department department;
|};
 
Employee e = {name: "John Doe", department: HR};
```

<h4>Conclusion</h4>

- In all three approaches, the User can't specify anything other than specified values which is good.
- Option 1: Enums is a better choice if we consider the readability and simplicity of the code.
