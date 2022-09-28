import ballerina/io;

// Method 1
function getUniqueValues(string[] names) returns string[] {
    string[] uniqueNames = [];
    foreach string name in names {
        if uniqueNames.indexOf(name) is () {
            uniqueNames.push(name);
        }
    }
    return uniqueNames;
}

//Method 2
function getUniqueValuesUsingMap(string[] names) returns string[] {
    map<()> mapNames = {};
    foreach var name in names {
        mapNames[name] = ();
    }
    return mapNames.keys();
}

public function main() {
    string[] duplicatedStrings = ["Anne", "Jane", "John", "Jane", "Ivan", "Peter", "Anne"];

    //Using Method 1
    io:println(getUniqueValues(duplicatedStrings));

    //Using Method 2
    io:println(getUniqueValuesUsingMap(duplicatedStrings));

}
