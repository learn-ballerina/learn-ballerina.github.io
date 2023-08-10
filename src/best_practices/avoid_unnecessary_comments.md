# Avoid unnecessary comments

Clear and concise code is crucial for readability and maintainability. While comments can be helpful for explaining complex logic or providing context, excessive or unnecessary comments can indeed clutter the code and make it harder to understand. 

It's important to strike a balance between using comments where they're truly needed and writing self-explanatory code that speaks for itself.

- Comments should not duplicate the code.
- Good comments do not excuse unclear code.

<h4><img align="center" height="30" src="../img/BadCode.png"> Bad Code</h4>

```bal
i = i + 1;         // Add one to i
``` 

```bal
//Validates the json input.
function validate(json input) returns boolean|error {
}
``` 


## See Also:

- [Best practices for writing code comments](https://stackoverflow.blog/2021/12/23/best-practices-for-writing-code-comments/)