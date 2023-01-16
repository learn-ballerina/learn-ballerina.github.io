# Handle unions of integer constants

Use unions of singletons or unions of constants. Unions of constants seem to be a better option out of those three.

Let's say we have an int variable named `priority` which can only be  `1`, `2`, or `3` where `1` is the highest priority.

<h4><img align="center" height="30" src="../img/BadCode.png"> Bad Code</h4>

```bal
type Issue record {|
   string title;
   int priority;
|};
 
Issue issue = {title: "Incorrect input parameters", priority: 1};
```

- No idea what are the possible priority values
- By looking at the issue value, we can't get a sense of priority level. Whether priority 1 means the highest priority or lowest priority. 
- Users can specify any int value as the priority. It is syntactically correct but incorrect from the scenario point of view. 

<h4><img align="center" height="30" src="../img/GoodCode.png"> Good Code</h4>

<h5>Option 1:Unions of singletons</h5>

```bal 
type Priority 1|2|3;
 
type Issue record {|
  string title;
  Priority priority;
|};
 
Issue issue = {title: "Incorrect input parameters", priority: 1};
```
 
<h5>Option 2: Unions of constants</h5>

```bal
const HIGH = 1;
const MEDIUM = 2;
const LOW = 3;
 
type Priority HIGH|MEDIUM|LOW;
 
type Issue record {|
   string title;
   Priority priority;
|};
 
Issue issue = {title: "Incorrect input parameters", priority: HIGH};
```
 
<h4>Conclusion</h4>

- Both Options 1 and 2 restrict the users from having arbitrary integer values for priority.
- But in option 1, by looking at the priority value, we can't understand whether `1` means high or low.
- So Option 2: Unions of constants is the best option.

## See Also:

[Unions](https://pre-prod.ballerina.io/learn/language-basics/#unions)
