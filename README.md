# Docker Symfony Deprecation Detector

[![Build Status](https://travis-ci.org/ypereirareis/docker-symfony-deprecation-detector.svg?branch=master)](https://travis-ci.org/ypereirareis/docker-symfony-deprecation-detector)

A docker image to run [Symfony Deprecation Detector](https://github.com/sensiolabs-de/deprecation-detector)

## Build it

```shell

make build

```

## Run it

The working dir into the docker container is `/app` by default.

Default options are : `check src/ vendor/` as you can see in the [Dockerfile](Dockerfile?L25).

```shell

docker run -it --rm \
  -v `pwd`:/app \
    ypereirareis/symfony-deprecation-detector
    
OR

docker run -it --rm \
  -v `pwd`:/app \
    ypereirareis/symfony-deprecation-detector CUSTOM_OPTIONS

```

## Tests

```shell

./tests.sh

```
