import ballerina/io;

class Customer {
    private string firstName;
    string lastName;
    public int id;

    function init(string firstName = "A", string lastName = "B", int id = 0) {
        self.firstName = firstName;
        self.lastName = lastName;
        self.id = id;
    }

    function getFullName() returns string {
        return self.firstName + " " + self.lastName;
    }
}

public function main() {
    //Calls init function with all parameters
    Customer cust1 = new ("Anupama", "Pathirage", 10032);
    string fullName = cust1.getFullName(); //Access  a method
    io:println(fullName);

    //Default values are used 
    Customer cust2 = new;
    int id = cust2.id; // Access a public id;
    io:println(id);

    //This inintialization is useful when the type of the object 
    //cannot be determined based on nthe context(e.g., when the LHS is var or union)
    var cust3 = new Customer("Bill", "Gates", 10031);
    string lastName = cust3.lastName;
    io:println(lastName);
}
