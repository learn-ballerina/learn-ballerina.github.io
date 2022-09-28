# Upload CSV files to Ballerina Service

This example shows how to process user uploaded CSV files to a service written in Ballerina.

#### Sample

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./../../code/how_to/upload_csv_to_service.bal) -->
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