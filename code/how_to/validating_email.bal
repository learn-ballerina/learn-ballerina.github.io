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
