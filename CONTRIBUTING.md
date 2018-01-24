# Contributing

The master branch of this repository will automatically build any time a master build of
[swagger-generator](https://hub.docker.com/r/swaggerapi/swagger-generator/) is built.

Please don't open pull requests against the master branch unless there are concerns about
how the file is organized, or about the structure of the resulting image.

# Pull Requests

In the event that this image is trailing behind Swagger Codegen's version, please open a
pull request against the [versions](https://github.com/jimschubert/swagger-codegen-cli.docker/tree/versions) branch
and bump the version number. Once merged, I'll create a tag and this will trigger the build
of the image in Docker Hub.

# Releases

GitHub automatically creates a "Release" based on tags. Ignore these.

Released images are available at [jimschubert/swagger-codegen-cli](https://hub.docker.com/r/jimschubert/swagger-codegen-cli/).

# Thanks

You hardly ever see this in CONTRIBUTING docs. But, thank you for contributing to making the
tools we use better for everyone else to use.
