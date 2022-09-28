# Table

- A table is a collection of records. Each record represents a row of the table.
- The tables also preserve the order of the rows.
- You can either iterate over the table, item by item, like arrays, or directly point to the item using the associated key.
- The rows are identified by keys.
  - table stores the keys as fields in the rows (Similar to SQL based database table where one of the columns is designated as a primary key)
  - Key is not limited to string type. You can also have keys belonging to any subtype of plain data, which also includes structured types.
  - You can have a table that has a multiple part key spread over several fields.
  - Key is immutable. So have to mark as `readonly` when defining it. A value cannot be assigned to such a field after the record is created.

#### Sample

```go
import ballerina/io;

type Student record {
    readonly string name; // This will be used as key
    int age;
};

type Employee record {
    readonly string name;
    readonly int id;
    string country;
    decimal salary;
};

type Manager record {
    readonly record {
        string name;
        int id;
    } identity;
    string country;
    decimal salary;
};

public function main() {
    //Table with string key
    table<Student> key(name) t1 = table [
            {name: "John", age: 11},
            {name: "Jane", age: 12}
        ];
    io:println(t1);

    Student? s = t1["John"];
    io:println(s.toString());

    Student s2 = {name: "Anne", age: 21};
    t1.add(s2);
    io:println(t1);

    //Table with multiple key fields
    table<Employee> key(name, id) t2 = table [
            {name: "Mike", id: 1239, country: "UK", salary: 435},
            {name: "Mike", id: 4323, country: "US", salary: 510}
        ];
    io:println(t2);

    //Table with structured key
    table<Manager> key(identity) t3 = table [
            {
                identity: {
                    name: "Mike",
                    id: 1239
                },
                country: "LK",
                salary: 453
            },
            {
                identity: {
                    name: "Mike",
                    id: 2342
                },
                country: "LK",
                salary: 453
            }
        ];

        Manager m = t3.get({name:"Mike", id: 1239});
        io:println(m);
}
```

#### Output

```
[{"name":"John","age":11},{"name":"Jane","age":12}]
{"name":"John","age":11}
[{"name":"John","age":11},{"name":"Jane","age":12},{"name":"Anne","age":21}]
[{"name":"Mike","id":1239,"country":"UK","salary":435},{"name":"Mike","id":4323,"country":"US","salary":510}]
{"identity":{"name":"Mike","id":1239},"country":"LK","salary":453}
```
