import ballerina/io;

public function main() {
    boolean b1 = true;
    boolean b2 = false;

    // Logical operators with boolean.
    boolean b3 = !b1;
    io:println(b3);

    boolean b4 = b1 && b2;
    io:println(b4);

    boolean b5 = b1 || b2;
    io:println(b5);
}
