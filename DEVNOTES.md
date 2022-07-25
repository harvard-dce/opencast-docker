## Notes on DCE-specific changes

### Additions

- `dce-build.sh` - wraps the `make build` command by first reading 
  in a `.env` of variables and then pushing the resulting images to
  AWS ECR when finished

- `dce-run.sh` - a dev script for quickly running a particular 
  type of opencast container (admin, allinone, etc) with the local 
  `.env` file passed into the runtime

- `docker-compose/docker-compose.multiserver.dce.yml` - a copy of 
  the mariadb docker compose config but with the quay.io images swapped 
  for ECR
