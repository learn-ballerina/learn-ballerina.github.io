# Hello World 

## Main Program

Traditionally the first program we write in any programming language is called a `Hello World` program – a program that simply outputs the text `Hello World` to the terminal. 

Let's write our first program using Ballerina. Use `bal run <file_name>` to run the samples. 

#### Sample

<a href="https://play.ballerina.io/?gist=a0c991ef252351ff9b5170d5a31bade3&file=lb_hello_world.bal" target="_blank">Run in Playground   </a>

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./../code/hello_world.bal) -->
<!-- The below code snippet is automatically added from ./../code/hello_world.bal -->
```bal
//Binds prefix `io` to `ballerina/io` module. 
import ballerina/io;

//The main function is the program entry point.
public function main() {
    // Print text to the console using `io` module `println` function. 
    io:println("Hello World");
}
```
<!-- The below code snippet is automatically added from ./code/hello_world.bal -->
<!-- MARKDOWN-AUTO-DOCS:END -->


#### Output

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./../code/hello_world.bash) -->
<!-- The below code snippet is automatically added from ./../code/hello_world.bash -->
```bash
Hello World
```
<!-- The below code snippet is automatically added from ./code/hello_world.bash -->
<!-- MARKDOWN-AUTO-DOCS:END -->

## Service

The network constructs in the language make it easy to develop network interactions easily. A simple `HTTP` service is as follows. 

#### Sample

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./../code/hello_world_service.bal) -->
<!-- The below code snippet is automatically added from ./../code/hello_world_service.bal -->
```bal
import ballerina/http;

service / on new http:Listener(9090) {

    // Handles HTTP GET requests.
    resource function get hello() returns string {
        return "Hello World!";
    }

}
```
<!-- The below code snippet is automatically added from ./../code/hello_world_service.bal -->
<!-- MARKDOWN-AUTO-DOCS:END -->

Once the above service is started, invoke the service using the `cURL` command below using another terminal.

```bash
curl http://localhost:9090/hello
```

#### Output

```bash
Hello World!
```