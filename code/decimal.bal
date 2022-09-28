import ballerina/io;

public function main() {
    //Float doesn't represent decimal fractions exactly.
    float f = 100.10 - 0.01;
    io:println(f);

    //Decimal represents decimal fractions exactly.
    decimal d = 100.10 - 0.01;
    io:println(d);
}