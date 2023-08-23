# Use proper commit messages and PR titles

Effective Git commit messages and subject lines hold immense significance in comprehending alterations and enhancing the code's maintainability.

1. Always commit the changes to your fork and push them to the corresponding original repo by sending a Pull Request (PR).
2. Follow the best practices for writing commit messages/PR titles. 

- Limit the subject line to 50 characters
- Capitalize the subject line
- Do not end the subject line with a period
- Use the imperative mood in the subject line. A properly formed Git commit subject line should always be able to complete the following sentence:

    If applied, this commit will `<your subject line here>`


<h4><img align="center" height="30" src="../img/BadCode.png"> Bad commit messages/subject lines</h4>

`Feature request for banking app` - Not follwoing the semantics of If applied, this commit will `<your subject line here>` and not informative enough

`Add minor changes` - Not informative enough

`Implementing XML to record converter` - Not follwoing the semantics of If applied, this commit will `<your subject line here>` 

<h4><img align="center" height="30" src="../img/GoodCode.png"> Good commit messages/subject lines</h4>

`Fix the failure to generate records from xml when multiple namespaces exist` - Follows the semantics and informative enough

`Fix GraalVM compatibility warnings after Java17 migration`

## See Also

- [How to Write a Git Commit Message](https://cbea.ms/git-commit/)