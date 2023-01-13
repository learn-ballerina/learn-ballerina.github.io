# Use open vs closed records

## Definitions

### Open records

The `record {}` is an inclusive record type-descriptor that allows any `anydata` field in addition to those explicitly specified in the record type-descriptor.That means it allows fields other than the explicitly specified fields.

```bal
type Person record {
    string name;
    string address;
    int age;
};
```

This defines a record type that will always have the three fields name, address, and age. Also in addition it may also contain any number of other fields that belong to the type anydata.

This record type is equivalent to explicitly specifying the rest descriptor as follows.

```bal
type Person record {
    string name;
    string address;
    int age;
    anydata...;
};
```

With the above definition any of the following is allowed.

```bal
Person p1 = {name: "Anne", address: "TX", age: 30};
Person f2 = {name: "Anne", address: "TX", age: 30, "country": "USA"};
```

Similarly, you can control the type of the other fields by specifying the type in the rest descriptor.

```bal
type Person record {|
    string name;
    string address;
    int age;
    int...; // Extra fields have to be ints
|};
```

To access these extra (rest) fields, you cannot use field access like `p.id`. Instead it is required to access as follows.
`anydata id = res["id"];`


### Closed records

The `record {||}` is an exclusive record type-descriptor. It will allow only the specified fields, and an attempt to convert a JSON object that has extra fields to a value of this type will fail.

```bal
type Person record {|
    string name;
    string address;
    int age;
|};
```

## Usage 

One of the key best practices for creating robust services is embodied in the so called [Postels Law (or Robustness Principle)](https://en.wikipedia.org/wiki/Robustness_principle). It states that any protocol implementation should

> be conservative in what you send, be liberal in what you accept.

<h4><img align="center" height="30" src="../img/GoodCode.png"> Good Code</h4>

```bal
import ballerina/http;

//Represent the incoming payload, so using open record
type ITunesResponse record {
    int resultCount;
    ITunesItem[] results;
};

type ITunesItem record {
    string collectionName;
    string trackName;
    string releaseDate;
    int trackTimeMillis;
};

//Represent the returned payload, so using closed record
type Track record {|
    string collection;
    string name;
    string releaseDate;
    int time;
|};

service /store on new http:Listener(8080) {

    resource function get tracks/[string track]() returns Track[]|error {
        http:Client iTunesClient = check new ("https://itunes.apple.com");
        ITunesResponse iTunesResponse = check iTunesClient->get("/search?entity=musicTrack&term="+track);
        return from ITunesItem i in iTunesResponse.results
        select {collection: i.collectionName, name: i.trackName, releaseDate: i.releaseDate, time:i.trackTimeMillis/1000};

    }
}
```