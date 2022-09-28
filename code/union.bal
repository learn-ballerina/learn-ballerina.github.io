import ballerina/io;

type Address record {
    string city;
    string country;
    int code;
};

//Instead of writing longer union, it is  easy to  use a  type defintion.
type Location Address|string|int;

public function main() {
    int|string|float u1 = "this is a string";
    if u1 is int {
        io:println("union contains a int  value");
    } else if u1 is float {
        io:println("union contains a float  value");
    } else { //Type narrowed  to  string  here.
        io:println("union contains a string  value");
    }

    //Union types with nil.
    int|() i1 = 4;
    io:println(i1);
    float? f1 = ();
    io:println(f1);

    //Union type with type descriptors
    Location loc = "UK";
    io:println(loc);
}
