
# Docker Compose Commands Reference Guide

## Introduction

Docker Compose is a tool used for defining and running multi-container Docker applications. It leverages a YAML file, typically named `docker-compose.yml`, to configure the application's services. This guide covers some common Docker Compose commands and their usage.

## `docker-compose.yml` Overview

yamlCopy code

`version: "3.9"
services:
  web:
    build: ./web
  db:
    image: postgres` 

-   Here we have two services, `web` and `db`.
    -   The `web` service is defined with a `build` directive, indicating Docker Compose to build the image from the `./web` directory's Dockerfile.
    -   The `db` service uses a pre-built `postgres` image.

## Common Docker Compose Commands

### Starting and Running Services

-   `docker-compose up`: Starts and runs the entire application.
-   `-d` or `--detach`: Run the services in the background.
-   `--build`: Build images before starting containers.

### Stopping and Removing Resources

-   `docker-compose down`: Stops and removes containers, networks, volumes, and images created by `up`.
-   `--rmi all` or `--rmi local`: Removes images. 'all' removes all images, 'local' removes only images without a custom tag.
-   `-v`: Removes volumes declared in the `volumes` section of the Compose file and anonymous volumes attached to containers.

### Listing Services

-   `docker-compose ps`: Lists all running services.

### Building Services

-   `docker-compose build`: Builds all services defined with a `build` context.

### Pulling Images

-   `docker-compose pull`: Pulls an image associated with a service but does not start a container.

### Starting and Stopping Services

-   `docker-compose start`: Starts existing containers for a service.
-   `docker-compose stop`: Stops running containers without removing them.

### Restarting Services

-   `docker-compose restart`: Restarts all the services.

### Viewing Logs

-   `docker-compose logs`: Displays log output from services.
 -   `--tail`: Limits the number of shown log lines.
 -   `-f` or `--follow`: Follows log output.

### Executing Commands in Containers

-   `docker-compose exec`: Executes a command in a running container.
-   E.g., `docker-compose exec web bash` starts a bash shell in a running 'web' service.

### Removing Containers

-   `docker-compose rm`: Removes stopped service containers.

### Running One-Time Commands

-   `docker-compose run`: Runs a one-time command against a service.
 -   E.g., `docker-compose run web bash` starts a bash shell in a new 'web' service.

## Docker Compose Workflow

-   `docker-compose up` is a combination of several steps:
 -   `docker-compose pull`: Pulls images not available locally.
  -   `docker-compose build`: Builds images from Dockerfiles for services with 		build context.
 -   `docker-compose create`: Creates containers from the images.
 -   `docker-compose start`: Starts the created containers.

Note: `docker-compose build` does not create containers, only images. Containers are created when you use `docker-compose up`.

----------
