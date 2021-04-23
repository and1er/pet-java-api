# pet-java-api

A pet project with API written with Java and auxiliary apps

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
