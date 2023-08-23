# Use proper commit messages and PR titles

Effective Git commit messages and subject lines hold immense significance in comprehending alterations and enhancing the code's maintainability.

Always commit the changes to your fork and push them to the corresponding original repo by sending a Pull Request (PR). Follow the best practices for writing commit messages/PR titles. 

1) Limit the subject line to 50 characters
2) Capitalize the subject line
3) Do not end the subject line with a period
4) Use the imperative mood in the subject line. A properly formed Git commit subject line should always be able to complete the following sentence:

    If applied, this commit will `<your subject line here>`


<h4><img align="center" height="30" src="../img/BadCode.png"> Bad commit messages/subject lines</h4>

`Feature request for banking app` - Violting 4th point above and not informative enough

`Add minor changes` - Not informative enough

`Implementing XML to record converter` - Violting 4th point above 

`fix GraalVM compatibility warnings after Java17 migration.` - Violting 2nd and 3rd points above 

<h4><img align="center" height="30" src="../img/GoodCode.png"> Good commit messages/subject lines</h4>

`Fix the failure to generate records from xml when multiple namespaces exist`

`Fix GraalVM compatibility warnings after Java17 migration`

## See Also

- [How to Write a Git Commit Message](https://cbea.ms/git-commit/)