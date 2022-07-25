#!/usr/bin/env bash

source .env

distribution=${1-allinone}

docker run \
  -ti \
  --entrypoint "/bin/bash" \
  --env-file $(pwd)/.env \
  ${IMAGE_REGISTRY}/${distribution}:${OPENCAST_VERSION}
