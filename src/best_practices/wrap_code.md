# Wrap code at 120 characters

It is conventional to wrap lines of code at 120 characters. This is usually IDE's default wrap margin, and it is the number of characters that can be displayed in GitHub's web UI without requiring horizontal scrolling.

Excessively long lines are indicative of a code quality issue, suggesting that a single statement is attempting to handle too much. Maintaining code lines at 120 characters or fewer enhances readability and ease of review. 
- It's advisable to refactor the code, ensuring it remains within the 120-character limit. 
- Alternatively, introduce line breaks strategically to aid readers in comprehending the code more effectively.

<h4><img align="center" height="30" src="../img/BadCode.png"> Bad Code</h4>

```bal
public function extractToolsFromOpenApiJsonSpec(map<json> openApiSpec, *AdditionInfoFlags additionInfoFlags) returns HttpApiSpecification & readonly|error {
    
}
```


<h4><img align="center" height="30" src="../img/GoodCode.png"> Good Names</h4>

```bal
public function extractToolsFromOpenApiJsonSpec(map<json> openApiSpec, *AdditionInfoFlags additionInfoFlags) 
    returns HttpApiSpecification & readonly|error {
    
}
```

A universal and definitive formula for line-wrapping in all scenarios is absent. Frequently, multiple legitimate approaches exist for line-wrapping a given code segment.

## See Also:
- [Where to break](https://google.github.io/styleguide/javaguide.html#s4.5.1-line-wrapping-where-to-break)