#!/bin/bash

RUN_SCRIPT=$(readlink -f $0)
BASE_DIR="$(dirname $RUN_SCRIPT)/.."

CMD=${1-up}

pushd $BASE_DIR >/dev/null

export OPENCAST_UID=$(id -u)
export OPENCAST_GID=$(id -g)

docker-compose -f docker-compose/docker-compose.local.yml $CMD --force-recreate
