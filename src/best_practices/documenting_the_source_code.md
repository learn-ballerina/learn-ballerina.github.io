# Documenting the source code

The Ballerina documentation framework allows developers to write the documentation in line with the Ballerina source code using the lightweight markdown markup language.

## Documenting functions

Always add a period (.) at the end of a function description. However, for the parameter and return type descriptions, omit the period if you have only one sentence. If there are multiple sentences, add the period at the end of each sentence. For example,

```bal
# Description of the function.
#
# + i - One sentence only
# + s - Sentence one. Sentence two.
# + return - Return description
public function foo(int i, string s) returns boolean {
    return true;
}
```

## Documenting packages and modules

Ballerina documentation design and usage is aligned with the package and module semantics of Ballerina.

Use Package.md and Module.md files wisely to give the required information to the users.

### Package.md

- Displayed at the package landing page in the Ballerina central.
- Must introduce and explain the package. If package has multiple modules, can give a summary on each module.
- This is the place where you can market your package for more user visibility in the central. So add more meaningful content to package users.

### Module.md

- Displayed with the module API documentation
- Must explain the functionality of the module

