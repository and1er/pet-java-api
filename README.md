# pet-java-api

A pet project with API written with Java and auxiliary apps.

[![Common Linters](https://github.com/and1er/pet-java-api/actions/workflows/linting.yml/badge.svg)](https://github.com/and1er/pet-java-api/actions/workflows/linting.yml)
[![Terraform CI](https://github.com/and1er/pet-java-api/actions/workflows/terraform-ci.yml/badge.svg)](https://github.com/and1er/pet-java-api/actions/workflows/terraform-ci.yml)
[![Java API CI](https://github.com/and1er/pet-java-api/actions/workflows/api-ci.yml/badge.svg)](https://github.com/and1er/pet-java-api/actions/workflows/api-ci.yml)

[![Release](https://github.com/and1er/pet-java-api/actions/workflows/release.yml/badge.svg)](https://github.com/and1er/pet-java-api/actions/workflows/release.yml)

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

See also [app_exporter/Development.md](app_exporter/Development.md).

## GitHub Actions Secrets

| Variable | Description | Example |
| ------ | ------ | ------ |
| **TF_API_TOKEN** | *A token for Terraform Cloud auth* | `XXXXXXXXX`
| **DOCKER_USERNAME** | *A Dockerhub login* | `octocat`
| **DOCKER_PASSWORD** | *A Dockerhub password* | `im-mona`
| **DEPLOY_SSH_PRIVATE_KEY** | *SSH private key content for app deploy* | `-----BEGIN OPENSSH PRIVATE KEY----- ...`
