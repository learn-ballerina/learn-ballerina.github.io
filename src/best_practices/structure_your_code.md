# Structure your code

Well-organized code is very important for the maintainability of the project.

The goal is to best leverage Ballerina features to create clean, effective code. In practical terms, the proper structure makes clean code whose logic and dependencies are clear, as well as how the files and folders are organized in the filesystem.

## The nomenclature 

**Single .bal file**
- Smallest unit of compilation in the Ballerina build system. 
- Can be used for simple applications and is not recommended for larger applications.

**Package**
- Ballerina code is organized in a single shareable unit called a package.
- A package is a collection of modules.
- A package should contain at least one module called the default module.
- It is common in small projects to have only one (default) module in a package. As a result, the default module’s content is placed directly in the root of the package director

**Module**
- Module is a collection of Ballerina source files, test files, and resources.  
- Each module has its own directory, which organizes source files, test files, and resources.

<h2><img align="center" height="30" src="../img/BadCode.png">Some signs of a poorly structured project</h2>

- Doing everything on a single `.bal` file without leveraging the Ballerina packages/modules.
- Having lots of unrelated components in the default module of the package without breaking them into multiple modules.
- Lengthy `.bal` files without breaking the logic into meaningful files.
- Heavy usage of global state or context, which is not needed.

<h2><img align="center" height="30" src="../img/GoodCode.png">Best practices to follow</h2>

**Project Structure**
- Decide on the logical separation of your components and structure the project with modules accordingly. 
- Depending on the complexity and use case, break the code into multiple `.bal` files. 

**Naming and versioning**
- Use a proper `org` name and `package` name for your project in `Ballerina.toml` file.
- When choosing an organization name, consider the restrictions for the organization name of a package when publishing to Ballerina Central. Organization names can only contain alphanumeric values with lowercase letters and cannot start with numeric values. 
- Follow [Semantic Versioning](https://semver.org/) when version the package.

**Documentation**
- Properly [document](https://ballerina.io/learn/generate-code-documentation/) public APIs and functions exposed via the package.
- Add up-to-date and meaningful overview of the package and modules in `Package.md` and `Module.md` files, as that will give a great overview for the users of your package. 

## See Also:

[Organize Ballerina code](https://ballerina.io/learn/organize-ballerina-code/)