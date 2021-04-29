# Exporter Application

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

## Building

### Local

```bash
go install github.com/and1er/pet-java-api/app_exporter
```

or in project root

```bash
cd ./app_exporter
go install .
```

and then run `app_exporter` from `$GOPATH/bin` dir.

### Docker

```bash
cd ./app_exporter
docker build -t app_exporter .
docker container run --rm -p 80:8080 app_exporter:latest
```

To enter a container as `root` user

```bash
docker container run --rm -it --user root app_exporter:latest /bin/sh
```
