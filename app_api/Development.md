# API Application

## Requirements

* Java 11, [OpenJDK](https://openjdk.java.net/)

    ```bash
    $ java --version
    openjdk 11.0.11 2021-04-20
    OpenJDK Runtime Environment (build 11.0.11+9-Ubuntu-0ubuntu2.20.04)
    OpenJDK 64-Bit Server VM (build 11.0.11+9-Ubuntu-0ubuntu2.20.04, mixed mode, sharing)
    ```

* [checkstyle](https://checkstyle.org/) linter.
* [maven](https://maven.apache.org/)

    ```bash
    $ mvn --version
    Apache Maven 3.6.3
    Maven home: /usr/share/maven
    Java version: 11.0.11, vendor: Ubuntu, runtime: /usr/lib/jvm/java-11-openjdk-amd64
    Default locale: en_US, platform encoding: UTF-8
    OS name: "linux", version: "5.8.0-50-generic", arch: "amd64", family: "unix"
    ```

## Local Build and Run

```bash
cd ./app_api
./mvnw clean package
java -jar target/app_api-0.1.0.jar 
```
