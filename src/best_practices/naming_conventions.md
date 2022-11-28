# Naming conventions

Following are the naming conventions used in various Ballerina constructs. Some are opinionated rules but ensure consistency. 

<h2>Organizations</h2>

- Organization names can only contain alphanumeric values with lowercase letters and cannot start with numeric values. 
- Organization names starting with `ballerina` (e.g., `ballerina`, `ballerinax`, `ballerinai`, etc.) are reserved for system use, and you cannot publish any packages starting with the `ballerina` prefix to Ballerina Central. 

<h4><img align="center" height="30" src="../img/BadCode.png"> Bad Names</h4>

```
7eleven
Google
ballerinac
```

<h4><img align="center" height="30" src="../img/GoodCode.png"> Good Names</h4>

```
wso2
google
```

<h2>Packages and modules</h2>

- Names can only contain alphanumerics, underscores, and periods and the maximum length is 256 characters.
- Names can contain alphanumeric characters, including dots. Dots in a module name has no meaning other than the last segment after the final dot is used as a default alias within the source code.
- When a package provides multiple functionalities, it is better to split it into multiple packages. For scenarios like this, you can give a hierarchical name to the package by using a dot (`.`).

<h4><img align="center" height="30" src="../img/BadCode.png"> Bad Names</h4>

```
Auth
HTTP
aws_s3
```

<h4><img align="center" height="30" src="../img/GoodCode.png"> Good Names</h4>

```
auth
http
aws.s3
```

<h2>Files</h2>

- Ballerina source files should have the extension `.bal` always. 
- Ballerina file names should all be simple.
- Has to start with a character, and if the file name has multiple words, those words should be separated by an underscore (_). 

<h4><img align="center" height="30" src="../img/BadCode.png"> Bad Names</h4>

```
StockQuoteService.bal
stockQuoteService.bal
```

<h4><img align="center" height="30" src="../img/GoodCode.png"> Good Names</h4>

```
listner.bal
stock_quote_service.bal
```

<h2>Functions</h2>

- Function names must be verbs in camel case, starting with a lowercase letter (i.e., lowerCamelCase).
- Function parameters must be in camel case starting with a lowercase letter (i.e., lowerCamelCase).
- Abbreviations and acronyms must not be uppercase when used in function names.


<h4><img align="center" height="30" src="../img/BadCode.png"> Bad Names</h4>

```
function TotalWidth()
function addStudent( int age, string FullName)
function buildRSAPublicKey()
```

<h4><img align="center" height="30" src="../img/GoodCode.png"> Good Names</h4>

```
function computeTotalWidth()
function addStudent( int age, string fullName)
function buildRsaPublicKey()
```

<h2>Variables</h2>

- Variable names must be in camel case, starting with a lowercase letter (i.e., lowerCamelCase).

<h4><img align="center" height="30" src="../img/BadCode.png"> Bad Names</h4>

```
int Count;
string accountname;
string account_name;
```

<h4><img align="center" height="30" src="../img/GoodCode.png"> Good Names</h4>

```
int count;
string accountName;
```

<h2>Constants</h2>

- Constants must be all uppercase, using underscore to separate words. 

<h4><img align="center" height="30" src="../img/BadCode.png"> Bad Names</h4>

```
const MAXSIZE = 1000;
const maxSize = 1000;
```

<h4><img align="center" height="30" src="../img/GoodCode.png"> Good Names</h4>

```
const MAX_SIZE = 1000;
```

<h2>Objects and records</h2>

- All object and record names must be nouns in camel case starting with an uppercase letter.
- All object and record fields must follow normal variable naming rules.

<h4><img align="center" height="30" src="../img/BadCode.png"> Bad Names</h4>

```
public type Employee_Data record {|
    string first_Name;
    string LastName;
    int age;
|};
```

<h4><img align="center" height="30" src="../img/GoodCode.png"> Good Names</h4>

```
public type Employee record {|
    string firstName;
    string lastName;
    int age;
|};
``` 
