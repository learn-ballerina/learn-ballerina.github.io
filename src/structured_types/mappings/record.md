# Record

- A record is a collection of fields of a specific type. 
- With record types, you have control over what your keys are.
- The keys are named and their types define the types of values that are allowed for the fields.
- Records are mutable.
- Typically a record type is combined with a type definition. 
- The name of the type is not significant: a record is just a collection of fields. 
- Record equality works same as map equality.

## Annonymous record

- Record types can be defined in-line as well. These types do not have a type name associated with them. So the record descriptor itself has to be specified when declaring variables of an annonymous record type. 
- Anonymous record types can be used in instances where there is no need to refer to the record type by its name (e.g., records as record or object fields, records as function parameters).

#### Sample

```go
import ballerina/io;

// Defines a record type named `Student`.
type Student record {
    int age;
    string name;
};

// Defines a record type named `Person` with an annonymous record inside.
type Person record {
    int age;
    string name;
    record {
        string city;
        string country;
    } address;
};

public function main() {
    // Creates a `annonymous record`, specifying values for its fields.
    record { int age; string name; } r1 = {
        age: 10,
        name: "Anne"
    };
    io:println(r1);

    // Creates a `Student` record.
    Student s1 = {
        age: 10,
        name: "Anne"
    };
    io:println(s1);

    //Check whether the two records are equal.
    io:println(r1 == s1);

    //Access fields
    int r1Age = r1.age;
    io:println(r1Age);

    Person p = {
        age: 33,
        name: "John",
        address: {
            city: "Colombo",
            country: "LK"
        }
    };
    io:println(p);
}
```

#### Output

```
{"age":10,"name":"Anne"}
{"age":10,"name":"Anne"}
true
10
{"age":33,"name":"John","address":{"city":"Colombo","country":"LK"}}
```

## Open vs Closed Records

- `Closed Record` : 
    - If the set of fields is fixed.  The `{|` and `|}` delimiters indicate that the record type allows mapping values, which contain only the described fields.
    - `map<T>` is same as record `{| T...; |}`.
- `Open Record` : 
    - If the set of fields is not fixed. The `{` and `}` delimiters indicate that in addition to the defined fields, this record type allows additional fields with `anydata` values. The descriptor `record { }` is equivalent to `record {| anydata...; |}`.
    - Record types are by default open: they allow fields other than those specified. 
    - The type of unspecified fields are anydata. Records are maps. Open records belongs to map<anydata>. 
    - Use quoted keys for fields not mentioned in the record type.

#### Sample

```go
import ballerina/io;

// `Person` type is open record allows additional fields with `anydata` values.
type Person record {
    string name;
    int age;
};

// `Employee` type is a closed record. 
type Employee record {|
    string name;
    int age;
    int id;
|};

// Define an open record with rest fields. All additional fields should be of the type or 
// the subtype of the rest field.
type Grades record {|
    int maths;
    int english;
    int science;
    string...;
|};

public function main() {
    // Create an `Employee` value
    Employee e = {
        name: "Anne",
        age: 34,
        id: 567
    };
    io:println(e);

    // Create an `Person` value 
    Person p1 = {
        name: "John",
        age: 33
    };
    io:println(p1);

    // Create an `Person` value with additional filed.
    Person p2 = {
        name: "Mark",
        age: 34,
        "city": "London"
    };
    io:println(p2);

    // You can assign an `Employee` type value to a `Person`.
    Person p3 = e;
    io:println(p3);

    // You can assign record value to a `map`.
    map<anydata> m = e;
    io:println(m);

    // Create a record value with additional rest fields
    Grades g = {
        maths: 55,
        english: 98,
        science: 43,
        "art": "A",
        "music": "B"
    };
    io:println(g);
    
    // Can assign record to a map of corresponding type.
    map<int|string> m2 = g;
    io:println(m2);
}
```

#### Output

```
{"name":"Anne","age":34,"id":567}
{"name":"John","age":33}
{"name":"Mark","age":34,"city":"London"}
{"name":"Anne","age":34,"id":567}
{"name":"Anne","age":34,"id":567}
{"maths":55,"english":98,"science":43,"art":"A","music":"B"}
{"maths":55,"english":98,"science":43,"art":"A","music":"B"}
```

## Optional Fileds
- Fields of a record can be marked as optional. 
- These fields can be omitted when creating a record. 
- Such fields can be accessed via optional field access (e.g., p?.name) or member access (e.g., p[“name”]) which will both return () if the field is not present in the record.

#### Sample

```kotlin
import ballerina/io;

type Headers record {
    string 'from; // When a keyword is using as field name a single quote is used. This is a required field.
    string to = "test@example.com"; // This is a field with defualt value.
    string subject?; //This is an optional field.
};

public function main() {

    Headers h1 = {
        'from: "John"
    };
    io:println(h1); // Will have values for default field too.

    //Use ?. operator to access optional field
    string? subject = h1?.subject;
    io:println(subject); // Subject is nil here.

    Headers h2 = {
        'from: "John",
        to: "anne@exmample.com",
        subject: "test"
    };
    io:println(h2);

    // Can access the fields as follows.
    io:println(h1["subject"]);
    io:println(h2["subject"]);
}

```

#### Output

```
{"from":"John","to":"test@example.com"}

{"from":"John","to":"anne@exmample.com","subject":"test"}

test
```

## Record Type Reference 

- Record type referencing provides a convenient way to copy the fields defined in a record type descriptor to another record type descriptor. 
- It is equivalent to explicitly defining those fields in the new type descriptor.
- Type referencing copies the fields including their properties (e.g., type, default value, optional status). 
- A record type descriptor can have multiple type references as well as chained-type references. 

#### Sample

```go
import ballerina/io;

type Person record {|
    string name;
    int age = 25;
|};

type Student record {
    *Person;  // References the `Person` record.
    string studentId;
};

type Grades record {|
    int maths;
    int english;
    int science;
|};

public function main() {
    Person p = {name: "John", age: 13};
    io:println(p);

    Student s1 = {name: "Jane", studentId: "2103X"};
    io:println(s1);

    Grades g = {
        maths: 32,
        english: 34,
        science: 54
    };
    // When a spread field is specified, all the fields of the relevant
    // mapping value are added to the new record value being created.
    Student s2 = {name: "alex", studentId: "4224C", ...g };
    io:println(s2);
}
```

#### Output

```
{"name":"John","age":13}
{"studentId":"2103X","name":"Jane","age":25}
{"studentId":"4224C","name":"alex","age":25,"maths":32,"english":34,"science":54}
```