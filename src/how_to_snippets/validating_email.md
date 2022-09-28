# Validate email address using Regex in Ballerina

This example shows how to download a small file from the web on to your local machine. 

#### Sample

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./../../code/how_to/validating_email.bal) -->
<!-- The below code snippet is automatically added from ./../../code/how_to/validating_email.bal -->
```bal
import ballerina/io;
import ballerina/regex;

public function main() {
    string email = "hello$example.com";
    io:println(email + " is valid:", isValid(email));
    email = "hello@abc.com";
    io:println(email + " is valid:", isValid(email));
}

function isValid(string email) returns boolean {
    if email.length() < 3 || email.length() > 254 {
        return false;
    }
    return regex:matches(email, "^[a-zA-Z0-9.!#$%&'*+\\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$");
}
```
<!-- MARKDOWN-AUTO-DOCS:END -->


#### Output

```
hello$example.com is valid:false
hello@abc.com is valid:true
```