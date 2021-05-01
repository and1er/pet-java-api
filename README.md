# pet-java-api

[![Common Linters](https://github.com/and1er/pet-java-api/actions/workflows/linting.yml/badge.svg)](https://github.com/and1er/pet-java-api/actions/workflows/linting.yml)
[![Terraform CI](https://github.com/and1er/pet-java-api/actions/workflows/terraform-ci.yml/badge.svg)](https://github.com/and1er/pet-java-api/actions/workflows/terraform-ci.yml)
[![Java API CI](https://github.com/and1er/pet-java-api/actions/workflows/api-ci.yml/badge.svg)](https://github.com/and1er/pet-java-api/actions/workflows/api-ci.yml)
[![Golang Exporter CI](https://github.com/and1er/pet-java-api/actions/workflows/exporter-ci.yml/badge.svg)](https://github.com/and1er/pet-java-api/actions/workflows/exporter-ci.yml)

<!-- [![Release](https://github.com/and1er/pet-java-api/actions/workflows/release.yml/badge.svg)](https://github.com/and1er/pet-java-api/actions/workflows/release.yml) -->

A pet project with API written with Java and auxiliary apps.

Available here [https://pja.alosenkov.site/](https://pja.alosenkov.site/).

## Project Applications

### app_api

An API application written in Java using [Spring Boot framework](https://spring.io/). See also [app_api/Development.md](app_api/Development.md).

* [https://pja.alosenkov.site/](https://pja.alosenkov.site/) (index homepage). Shows a web page with a manual file upload form. Also shows already uploaded files.
* [https://pja.alosenkov.site/upload-file](https://pja.alosenkov.site/upload-file): API endpoint to post the file using HTTP request, e.g. using **curl** tool like this

    ```bash
    curl -F "file=@/path/to/file.txt" https://user:pass@pja.alosenkov.site/upload-file
    ```

    where `user:pass` is a credentials pair because API access is restricted.

    Successfull upload response example

    ```json
    {"name":"file.txt","uri":"https://pja.alosenkov.site/download/file.txt","type":"text/plain","size":6}
    ```

* [https://pja.alosenkov.site/hello](https://pja.alosenkov.site/hello): test endpoint, to be removed

    ```bash
    $ curl https://pja.alosenkov.site/hello?name=Andrei
    Hello Andrei!
    ```

### app_exporter

This application exposes service metrics in Prometheus format. The application is written in Golang.

Metrics are exposed only by `user:pass` credentials provided in request:

```bash
curl https://user:pass@pja.alosenkov.site/hello
```

See also [app_exporter/Development.md](app_exporter/Development.md).

## GitHub Actions Secrets

| Variable | Description | Example |
| ------ | ------ | ------ |
| **TF_API_TOKEN** | *A token for Terraform Cloud auth* | `XXXXXXXXX`
| **DOCKER_USERNAME** | *A Dockerhub login* | `octocat`
| **DOCKER_PASSWORD** | *A Dockerhub password* | `im-mona`
| **DEPLOY_SSH_PRIVATE_KEY** | *SSH private key content for app deploy* | `-----BEGIN OPENSSH PRIVATE KEY----- ...`
| **PJA_ANSIBLE_VAULT_PASS** | *Ansible Vault decryption password* | `secret-vault-pass`
| **AWS_ACCESS_KEY_ID** | *AWS IAM access key* | `XXXX`
| **AWS_SECRET_ACCESS_KEY** | *AWS IAM secret access key* | `YYYYY`
