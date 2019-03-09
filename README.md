# [swagger-codegen-cli.docker](https://github.com/jimschubert/swagger-codegen-cli.docker)

:warning: This is no longer maintained. I'm now a maintainer of [openapi-generator-cli](https://cloud.docker.com/u/openapitools/repository/docker/openapitools/openapi-generator-cli). :warning:

Dockerfile for running Swagger Codegen.

This allows users to generate code without installing Java on the host machine, or without updating from Java 1.6 (we all have our reasons).

This container image is also helpful if you can't, or don't want to, install Bash in your environment.

## Options

Swagger Codegen CLI options are available:

* generate
* help
* langs
* meta
* config-help

The default is `help`.

## Usage

All options for the CLI are supported.

```
docker run -it jimschubert/swagger-codegen-cli config-help -l csharp
```

For full options details, see the [Swagger Codegen README](https://github.com/swagger-api/swagger-codegen).

## Output Folder

Mount a volume to `/swagger-api/out` for output.

Example:

```
docker run -it -v ~/temp/swagger-generated:/swagger-api/out \
    jimschubert/swagger-codegen-cli generate \
    -i /swagger-api/yaml/petstore-with-fake-endpoints-models-for-testing.yaml \
    -l csharp \
    -o /swagger-api/out/cs
```
Your generated code will now be accessible under `~/temp/swagger-generated/cs`.

## Input Swagger Definition

To read in a swagger definition from a local file, just map a volume to `/swagger-api/yaml`.

Example:

```
docker run -it -v ~/temp/swagger-generated:/swagger-api/out \
    -v ~/temp/swagger-definitions:/swagger-api/yaml \
    jimschubert/swagger-codegen-cli generate \
    -i /swagger-api/yaml/twitter.yaml \
    -l csharp \
    -o /swagger-api/out/twitter
```
Your generated code will now be accessible under `~/temp/swagger-generated/twitter`.
