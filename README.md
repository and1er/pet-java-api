# pet-java-api

A pet project with API written with Java and auxiliary apps.

[![Linters](https://github.com/and1er/pet-java-api/actions/workflows/linting.yml/badge.svg)](https://github.com/and1er/pet-java-api/actions/workflows/linting.yml)

[![Terraform CI](https://github.com/and1er/pet-java-api/actions/workflows/terraform-ci.yml/badge.svg)](https://github.com/and1er/pet-java-api/actions/workflows/terraform-ci.yml)

[![Continuous Delivery](https://github.com/and1er/pet-java-api/actions/workflows/cd.yml/badge.svg)](https://github.com/and1er/pet-java-api/actions/workflows/cd.yml)

## Project Applications

### app_exporter

This exposes service metrics in Prometheus format. The application is written in Golang.

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
