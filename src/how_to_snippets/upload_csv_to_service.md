# Upload CSV files to Ballerina Service

This example shows how to process user uploaded CSV files to a service written in Ballerina.

#### Sample

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./../../code/how_to/upload_csv_to_service.bal) -->
<!-- The below code snippet is automatically added from ./../../code/how_to/upload_csv_to_service.bal -->
```bal
import ballerina/http;
import ballerina/mime;
import ballerina/io;

type Employee record {|
    string name;
    int age;
    decimal salary;
    boolean isMarried;
|};

// Service which is processing CSV file data
service /employees on new http:Listener(9095) {

    // Accepts a CSV file in the request payload and returns the data set after extracting
    resource function post upload(http:Request request) returns http:Response|error {
        http:Response response = new;
        string[][] csvLines = check extractCSVLines(request);
        Employee[] employees = check createEmployee(csvLines);
        //Returns extracted data in the response. Or can do whatever processing as needed. 
        response.setPayload(employees);
        return response;
    }
}

//Read the incoming data in bytes and extracts CSV data
function extractCSVLines(http:Request request) returns string[][]|error {
    var bodyParts = request.getBodyParts();
    if (bodyParts is mime:Entity[]) {
        string[][] csvLines = [];
        foreach var bodyPart in bodyParts {
            var mediaType = mime:getMediaType(bodyPart.getContentType());
            if (mediaType is mime:MediaType) {
                byte[] payload = check bodyPart.getByteArray();
                io:ReadableByteChannel readableByteChannel = check io:createReadableChannel(payload);
                io:ReadableCharacterChannel readableCharacterChannel = new (readableByteChannel, "UTF-8");
                io:ReadableCSVChannel readableCSVChannel = new io:ReadableCSVChannel(readableCharacterChannel, ",", 1);
                csvLines = check channelReadCsv(readableCSVChannel);
            } else {
                return error("Invalid media type!");
            }
        }
        return csvLines;
    } else {
        return error("Error in decoding multiparts!");
    }
}

//Read the io:ReadableCSVChannel and construct string[][] which represents CSV data 
function channelReadCsv(io:ReadableCSVChannel readableCSVChannel) returns string[][]|error {
    string[][] results = [];
    int i = 0;
    while readableCSVChannel.hasNext() {
        var records = readableCSVChannel.getNext();
        if records is string[] {
            results[i] = records;
            i += 1;
        } else if records is error {
            check readableCSVChannel.close();
            return records;
        }
    }
    check readableCSVChannel.close();
    return results;
}

//Construct record values 
function createEmployee(string[][] inputCSVData) returns Employee[]|error {
    Employee[] employees = [];
    foreach var line in inputCSVData {
        Employee employee = {
            name: line[0],
            age: check int:fromString(line[1].trim()),
            salary: check decimal:fromString(line[2].trim()),
            isMarried: check boolean:fromString(line[3].trim())
        };
        employees.push(employee);
    }
    return employees;
}
```
<!-- MARKDOWN-AUTO-DOCS:END -->


#### Sample CSV File

```
Name,Age,Salary,IsMarried
John,25,8000,FALSE
Anne,34,9000,TRUE
```


#### Output

##### Sample Request

```
curl -F 'img_avatar=@/home/test/EmployeeList.csv' http://localhost:9095/employees/upload/
```

##### Sample Response

```
[{"name":"John","age":25,"salary":8000,"isMarried":false},{"name":"Anne","age":34,"salary":9000,"isMarried":true}]
```