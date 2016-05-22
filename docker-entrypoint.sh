#!/bin/bash

set -eo pipefail

codegen="/swagger-api/swagger-codegen/modules/swagger-codegen-cli/target/swagger-codegen-cli.jar"

JAVA_OPTS=${JAVA_OPTS:"-XX:MaxPermSize=256M -Xmx1024M -DloggerPath=conf/log4j.properties"}
if [ "$1" = 'generate' ]; then
    shift
    exec java ${JAVA_OPTS} -jar ${codegen} generate "$@"
elif [ "$1" = 'help' ]; then
    shift
    exec java ${JAVA_OPTS} -jar ${codegen} help "$@"
else
    exec "$@"
fi