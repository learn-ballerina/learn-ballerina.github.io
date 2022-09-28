import ballerina/io;

public function main() {
    float f1 = 1.67;

    int i1 = 5;

    // Use `<T>` for explicit conversions.
    float f2 = f1 + <float>i1;
    io:println(f2);

    //Use ballerina/lang.float function.
    float f3 =f1.round();
    io:println(f3);   
}