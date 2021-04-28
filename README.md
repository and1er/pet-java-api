# pet-java-api

A pet project with API written with Java and auxiliary apps.

[![Common Linters](https://github.com/and1er/pet-java-api/actions/workflows/linting.yml/badge.svg)](https://github.com/and1er/pet-java-api/actions/workflows/linting.yml)
[![Terraform CI](https://github.com/and1er/pet-java-api/actions/workflows/terraform-ci.yml/badge.svg)](https://github.com/and1er/pet-java-api/actions/workflows/terraform-ci.yml)
[![Java API CI](https://github.com/and1er/pet-java-api/actions/workflows/api-ci.yml/badge.svg)](https://github.com/and1er/pet-java-api/actions/workflows/api-ci.yml)

[![Deploy](https://github.com/and1er/pet-java-api/actions/workflows/cd.yml/badge.svg)](https://github.com/and1er/pet-java-api/actions/workflows/cd.yml)

## Project Applications

### app_api

An API application written in Java using [Spring Boot framework](https://spring.io/)

#### /upload-file

To upload file using curl following request could be used

```bash
curl -F "file=@/path/to/file.txt" http://127.0.0.1:8080/upload-file
```

Successfull upload response example

```json
{"name":"file.txt","uri":"http://127.0.0.1:8080/download/file.txt","type":"text/plain","size":6}
```

#### /hello

```bash
$ curl http://localhost:8080/hello?name=Andrei
Hello Andrei!
```

See also [app_api/Development.md](app_api/Development.md).

### app_exporter

This application exposes service metrics in Prometheus format. The application is written in Golang.

## Development

### Requirements

* [Golang](https://golang.org/dl/)

    ```bash
    $ go version
    go version go1.16.3 linux/amd64
    ```

* [golangci-lint](https://github.com/golangci/golangci-lint)

### Linters

For golang

```bash
cd ./app_exporter
golangci-lint run
```

For Terraform [terrascan](https://github.com/accurics/terrascan) linter.

```bash
$ terrascan version
version: v1.5.0
```

### Building

```bash
go install github.com/and1er/pet-java-api/app_exporter
```

or in project root

```bash
cd ./app_exporter
go install .
```

and then run `app_exporter` from `$GOPATH/bin` dir.
