# Dependency management

- If you are a Ballerina library package developer, always use the local repository to test the package before pushing it to Central. Refer [Use dependencies from the local repository](https://ballerina.io/learn/manage-dependencies/#use-dependencies-from-the-local-repository).
Once the package is published to Central, it cannot be deleted.

- By default, the compiler always looks up the latest compatible versions of the dependencies in the repositories when building a package. The latest patch version of the locked dependencies will be automatically resolved.

    E.g. ballerina/io `1.0.0` is locked, `1.1.0` and `1.0.1` has been released. 
    The compiler will pick `1.0.1` in the next build and will update the `Dependencies.toml`.

- `Dependencies.toml` will be created if it is not available. The `Dependencies.toml` will always resolve to the latest compatible versions for the distribution you are using to build the project. 

- Updating to a compatible minor version is the user’s call. Specify the preferred minor version of the dependency in Ballerina.toml

- However, if you need to achieve reproducible builds, use offline and sticky modes. Using the `--offline` flag along with the `--sticky` flag will ensure a predictable build with optimal time for compilation. It will stick to the exact versions locked in the `Dependencies.toml`.

- If you need to make sure anyone who is working on the source code uses the latest versions of dependencies in their builds, do not commit the Dependencies.toml file to the source code repos. Since any dependency that you have used can be released with a new major version (which can contain incompatible changes), and when this dependency is resolved it would break your existing code.

- When it is needed to package JAR files with the archives, maintain Java libraries inside the package. You can store the JAR files anywhere in your file system. As a best practice, maintain Java libraries inside the package. The platform-specific library information needs to be specified in the `Ballerina.toml` file. 

    ```
    [[platform.java11.dependency]]
    # Absolute or relative path of the JAR file.
    path = "<path-to-jar-file-1>"
    # An optional comma-separated list of Ballerina module names (to restrict the usage of this JAR).
    modules = ["<ballerina-module-1>"]
    ```

- Alternatively, you can also specify Maven dependencies as platform-specific libraries. These specified dependencies get resolved into the target/platform-libs directory when building the package.

    ```
    [[platform.java11.dependency]]
    # An optional comma-separated list of Ballerina module names (to restrict the usage of this JAR).
    modules = ["<ballerina-module-1>"]
    groupId = "<group-id>"
    artifactId = "<artifact-id>"
    version = "<version>"
    ```