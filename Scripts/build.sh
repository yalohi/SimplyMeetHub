#!/bin/bash

SCRIPT_PATH=$(dirname $(realpath "$0"))
. ${SCRIPT_PATH}/env.sh

if [ -z "${MY_DOCKER_PATH}" ]; then exit 1; fi
if [ -z "${MY_BUILD_PATH}" ]; then exit 1; fi

cd ${SCRIPT_PATH}/../

rsync -a --delete ${MY_DOCKER_PATH} ${MY_BUILD_PATH}

cp -r SimplyMeetHub ${MY_BUILD_PATH}/hub/app

cd ${SCRIPT_PATH}/../${MY_BUILD_PATH}
docker-compose build
docker system prune -f