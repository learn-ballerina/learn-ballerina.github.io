# Configuration management

<h3>Handle sensitive configurations</h3>

- Configuration values containing passwords or secrets should not be passed with the normal configuration.
- Sensitive data can be passed to runtime using a different TOML file, and we can prioritize it higher than the normal configuration by prefixing the file path in the `BAL_CONFIG_FILES` environment variable.
- If `Config.toml` has sensitive configs, add `Config.toml` file into `.gitignore` to avoid accidental commits of those.
- Avoid having default values for sensitive configurable values.

<h3>Have default values</h3>

When the project grows, there can be a large number of configurable variables. Without default values, it will be hard to deal with all. So have sensible default values for all non-security sensitive variables.

<h4><img align="center" height="30" src="../img/BadCode.png"> Bad Code</h4>

```bal
configurable int maxActiveConnections = ?;
configurable int maxIdleConnections = ?;
```

<h4><img align="center" height="30" src="../img/GoodCode.png"> Good Code</h4>

```bal
configurable int maxActiveConnections = -1;
configurable int maxIdleConnections = 100;
```

<h3>Use descriptive names</h3>

Since the configuration variables are used to customize the program behavior, they should have unambiguous and descriptive names. 

<h4><img align="center" height="30" src="../img/BadCode.png"> Bad Code</h4>

```bal
configurable int maxActive = -1;
configurable int maxIdle = 100;
```

<h4><img align="center" height="30" src="../img/GoodCode.png"> Good Code</h4>

```bal
configurable int maxActiveConnections = -1;
configurable int maxIdleConnections = 100;
```

### See Also:

[Configure Ballerina programs](https://ballerina.io/learn/configure-ballerina-programs/configure-a-sample-ballerina-service/)
