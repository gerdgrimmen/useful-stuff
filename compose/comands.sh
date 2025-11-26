# start service
podman-compose up
# stop service
podman-compose down


# diagnostics
podman network ls

podman-compose logs web

podman exec -it <container-id> /bin/sh

podman volume ls


# using an .env file
# example
POSTGRES_USER=user
POSTGRES_PASSWORD=pass
POSTGRES_DB=mydb

# übernahme in die compose.yaml
environment:
  POSTGRES_USER: ${POSTGRES_USER}
  POSTGRES_PASSWORD: ${POSTGRES_PASSWORD}
  POSTGRES_DB: ${POSTGRES_DB}

# fat docker container "concept"
# https://stackoverflow.com/questions/70308825/how-to-package-several-services-in-one-docker-image