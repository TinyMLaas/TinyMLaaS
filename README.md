# TinyMLaaS-main

<!-- WARNING: THIS FILE WAS AUTOGENERATED! DO NOT EDIT! -->

This is the main repository of Tiny Machine Learning as a Service
project for Software Engineering Project course at University of
Helsinki, summer 2023.

![GitHub
Actions](https://github.com/TinyMLaas/TinyMLaaS/actions/workflows/deploy_staging.yaml/badge.svg)

## Overview

The [GitHub pages](https://tinymlaas.github.io/TinyMLaaS/) describe the
overview of the project and the functionality of the machine learning
modules: training, compiling, installing and observing.

## Repositories

- [Backend](https://github.com/TinyMLaas/TinyML-backend)
- [Frontend](https://github.com/TinyMLaas/TinyML-frontend)
- [CLI](https://github.com/TinyMLaas/TinyML-CLI)
- [MCU components](https://github.com/TinyMLaas/TinyML-MCU)

## Documentation

- [Way of
  Working](https://github.com/TinyMLaas/TinyMLaaS/blob/main/docs/1sprint/WoW.md)
- [Product
  backlog](https://github.com/users/JeHugawa/projects/2/views/1)
- [Working
  hours](https://docs.google.com/spreadsheets/d/1J1mJxM4wm9pnEoq1daXKhHpsEiAHHjz8Hl4N5ZgT6HM/edit#gid=1517018599)
- [Database schema](https://dbdiagram.io/d/61b0bee48c901501c0e6e6dc)
- [Suggestions for further
  development](https://github.com/TinyMLaas/TinyMLaaS/blob/main/docs/general/next_steps.md)

## Running the project

Use Docker to build and run the whole project.

1.  Clone this repository
2.  Run

``` bash
docker compose up -d
```

This will set up both the backend and frontend, and a network between
the two

If the bridge is also needed on the same machine, use the
[docker-compose-with-bridge.yml](./docker-compose-with-bridge.yml) file.
This will build and run the frontend, backend and bridge and create a
network between all three components.

1.  Clone this repository
2.  Run

``` bash
docker compose up -f docker-compose-with-brdige.yml -d
```

### Running individual parts of the project

See instructions in respective repositories for frontend, backend and
the birdge / relay service for MCUs.

- [Backend](https://github.com/TinyMLaas/TinyML-backend#instructions-for-running-the-application)
- [Frontend](https://github.com/TinyMLaas/TinyML-frontend)
- [MCUs](https://github.com/TinyMLaas/TinyML-MCU)
- [CLI](https://github.com/TinyMLaas/TinyML-CLI)
