# Remove duplicate values of string array

This sample shows how to remove duplicate values in a given string array.

#### Sample

<!-- MARKDOWN-AUTO-DOCS:START (CODE:src=./../../code/how_to/remove_duplicates.bal) -->
<!-- The below code snippet is automatically added from ./../../code/how_to/remove_duplicates.bal -->
```bal
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
```
<!-- MARKDOWN-AUTO-DOCS:END -->


#### Output

```
["Anne","Jane","John","Ivan","Peter"]
["Anne","Jane","John","Ivan","Peter"]
```