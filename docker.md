
# Docker Commands Reference Guide

## Introduction

This guide provides a quick reference to commonly used Docker commands and their options. It's useful for managing containers, images, volumes, and networks in Docker.

## Container Management

### Starting a Container

-   `docker run`: Used to start a new container from an image.
    -   `-d` or `--detach`: Run the container in the background.
    -   `-p` or `--publish`: Publish a container's port to the host.
    -   `--name`: Assign a name to the container.
    -   `-v` or `--volume`: Bind mount a volume.

### Listing Containers

-   `docker ps`: List running containers.
    -   `-a` or `--all`: Show all containers (default shows just running).

### Stopping a Container

-   `docker stop [CONTAINER_ID or CONTAINER_NAME]`: Stop a running container.

### Removing a Container

-   `docker rm [CONTAINER_ID or CONTAINER_NAME]`: Remove a stopped container.

## Image Management

### Pulling an Image

-   `docker pull [IMAGE_NAME:TAG]`: Pull an image or a repository from a registry.

### Removing an Image

-   `docker rmi [IMAGE_ID]`: Remove an image from local storage.

### Listing Images

-   `docker images`: List images.

### Building an Image

-   `docker build`: Build an image from a Dockerfile.
    -   `-t` or `--tag`: Name and optionally a tag in the 'name:tag' format.

## Running Commands in Containers

-   `docker exec`: Run a command in a running container.
- Running a terminal inside container
```
docker exec -it [container_id_or_name] /bin/bash

```
- Running inside cli application
```
  docker run -it --name cli --entrypoint /bin/bash cli:latest
```

## Logs and Inspection

-   `docker logs [CONTAINER_ID or CONTAINER_NAME]`: Fetch the logs of a container.
-   `docker inspect [CONTAINER_ID or CONTAINER_NAME or IMAGE_ID or IMAGE_NAME]`: Return low-level information on Docker objects.

## Volume Management

-   `docker volume create [VOLUME_NAME]`: Create a volume.
-   `docker volume ls`: List volumes.
-   `docker volume rm [VOLUME_NAME]`: Remove a volume.

## Network Management

-   `docker network create [NETWORK_NAME]`: Create a network.
-   `docker network ls`: List networks.
-   `docker network rm [NETWORK_NAME]`: Remove a network.

## Registry Interaction

-   `docker login`: Log in to a Docker registry.
-   `docker push [IMAGE_NAME]`: Push an image or a repository to a registry.

## Tagging Images

-   `docker tag [SOURCE_IMAGE:TAG] [TARGET_IMAGE:TAG]`: Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE.
