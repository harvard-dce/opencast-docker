
## Setup

1. Checkout matterhorn-dce-fork into the project root and switch to desired branch
1. Run `mvn clean install -DskipTests -Dcheckstyle.skip=true -Pallinone` to build OC
1. Checkout mh-opsworks-recipes into the project root and switch to desired branch
1. Run `make build-local` to build the `oclocal:latest` docker image

### Useful stuff

##### get a bash shell inside a running container

1. run `docker ps` and look for the container id for `oclocal:latest`
1. run `docker exec -t -i [container id] bash`
