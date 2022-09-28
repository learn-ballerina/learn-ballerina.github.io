# Download a file from URL using Ballerina

This example shows how to download a small file from the web on to your local machine. 

#### Sample

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./../../code/how_to/download_file.bal) -->
<!-- The below code snippet is automatically added from ./../../code/how_to/download_file.bal -->
```bal
import ballerina/io;
import ballerina/http;

function downloadFile(string filePath, string url) returns error? {
    http:Client httpEP = check new (url);
    http:Response e = check httpEP->get("");
    return io:fileWriteBytes(filePath, check e.getBinaryPayload());
}

public function main() {
    error? status = downloadFile("../img/logo.png", "https://ballerina.io/img/branding/ballerina_logo_dgrey_png.png");
    if (status is error) {
        io:println(status);
    } else {
        io:println("File downloaded successfully");
    }
}
```
<!-- MARKDOWN-AUTO-DOCS:END -->


#### Output

```
File downloaded successfully
```