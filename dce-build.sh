#!/usr/bin/env bash

set -e
set -a
source .env
set +a

make build

aws ecr get-login-password --region us-east-1 --profile test \
  | docker login --username AWS --password-stdin 542186135646.dkr.ecr.us-east-1.amazonaws.com

for d in admin allinone presentation worker build; do
  for tag in $IMAGE_TAGS; do
    docker push \
      ${IMAGE_REGISTRY}/${d}:${tag}
  done
done

