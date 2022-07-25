#!/bin/bash

BUILD_SCRIPT=$(readlink -f $0)
SCRIPT_DIR="$(dirname $BUILD_SCRIPT)"
BASE_DIR="${SCRIPT_DIR}/.."

source ${SCRIPT_DIR}/.env

pushd $BASE_DIR >/dev/null

docker build \
  --build-arg UID="$(id -u)" \
  --build-arg GID="$(id -g)" \
  --file Dockerfile-local \
  --tag ${IMAGE_REPOSITORY} .
