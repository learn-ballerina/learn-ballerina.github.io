# Format the code

Ballerina has an opiniated style guide. See [Coding conventions](https://ballerina.io/learn/style-guide/coding-conventions/)

Those coding conventions are followed by the Ballerina formatting tool.

Use one of the following ways to format the source files.

- Use `bal format` command - Formats the Ballerina source files. Formatting can be performed on a Ballerina package, module, or source file.

- Use VSCode plugin formatting. Can use the following options.

    - Right-click on the source file and use the `Format Document` option.
    - Use [format on save](https://code.visualstudio.com/updates/v1_6#_format-on-save) feature.


## Order of the imports in a .bal file

The sorting makes it simple to browse the list when there are many imports.

- First import the modules from same package.
- Second comes modules from the `ballerina/` and `ballerinax/` organizations.
- Third import the modules from 3rd party organizations.
- Seperate each group by an extra line. And each group has their imports in alphabetical order.

```bal
import bar;
import foo;
import ballerina/log;
import ballerina/time;
import ballerinax/jdbc;
import ballerinax/oracledb;
import abc/bar;
import abc/baz;
import cde/abz;
```

## See Also:

[Style guide](https://pre-prod.ballerina.io/learn/style-guide/coding-conventions/)
