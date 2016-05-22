# swagger-codegen-cli.docker

Dockerfile for running Swagger Codegen

Example:

```
docker run -it -v ~/temp/swagger-generated:/swagger-api/out \
    jimschubert/swagger-codegen-cli generate \
    -i /swagger-api/yaml/petstore-with-fake-endpoints-models-for-testing.yaml \
    -l csharp \
    -o /swagger-api/out/cs
```