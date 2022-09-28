import ballerina/http;

service / on new http:Listener(9090) {

    // Handles HTTP GET requests.
    resource function get hello() returns string {
        return "Hello World!";
    }

}
