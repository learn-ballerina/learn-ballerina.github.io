# Using query expressions for iterations

- A query expression is similar to the SQL query syntax where you can construct a list, a mapping, a table, a stream, or a sequence by iterating over an iterable value.
- It provides a convenient way to iterate while doing filtering and sorting as well.

<h4><img align="center" height="30" src="../img/BadCode.png"> Bad Code</h4>

```bal
import ballerina/io;

type CovidData record {
    string country;
    int cases;
    int population;
    int deaths;
};

type Country record {
    string name;
    int population;
    decimal caseFatalityRatio;
};

public function main() {
    CovidData[] covidData = getCovidData();

    Country[] countrySummary = [];
    int count = 0;
    foreach CovidData cd in covidData {
        if (cd.population > 5000 && cd.cases > 100) {
            decimal caseFatalityRatio = <decimal>cd.deaths / <decimal>cd.cases * 100;
            Country country = {name: cd.country, population: cd.population, caseFatalityRatio: caseFatalityRatio};
            countrySummary.push(country);
            count += 1;
            if (count == 3) {
                break;
            }
        }
    }
    io:println(countrySummary);
}

function getCovidData() returns CovidData[] {
    return [
        {country: "USA", cases: 1000000, population: 10000000, deaths: 10000},
        {country: "UK", cases: 100000, population: 1000000, deaths: 1000},
        {country: "India", cases: 10000, population: 100000, deaths: 100},
        {country: "Sri Lanka", cases: 1000, population: 10000, deaths: 10},
        {country: "Maldives", cases: 150, population: 1000, deaths: 1},
        {country: "Nepal", cases: 10, population: 100, deaths: 0}
    ];
}
```

<h4><img align="center" height="30" src="../img/GoodCode.png"> Good Code</h4>

The iteration can be re-write as follows using query expressions. 

```bal
Country[] countrySummary = from var {country, population, cases, deaths} in covidData
    where population > 5000 && cases > 100
    let decimal caseFatalityRatio = <decimal>deaths / <decimal>cases * 100
    order by caseFatalityRatio descending
    limit 3
    select {name: country, population, caseFatalityRatio};
```