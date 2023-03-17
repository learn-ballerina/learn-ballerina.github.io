# Use tuples to return multiple values

The tuple type is a structured type which creates a list of values like arrays. The main difference between the arrays and the tuples is in a tuple type, you can individually specify the types for each member.

<h4><img align="center" height="30" src="../img/BadCode.png"> Bad Code</h4>

If the `Product` record is only used to return the values from the function it is not that useful. 

```bal
type Product record {|
    int id;
    string name;
    float price;
|};

function getProductData() returns Product => {id: 1, name: "Ballerina", price: 99.9};

public function main() {
    Product product = getProductData();
}
```

<h4><img align="center" height="30" src="../img/GoodCode.png"> Good Code</h4>

```bal
function getProductData() returns [int, string, float] => [1, "Product 1", 10.0];

public function main() {
    var [id, name, price] = getProductData();
    // id is int
    // name is string
    // price is float
}
```