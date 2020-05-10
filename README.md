[![Docker Pulls](https://img.shields.io/docker/pulls/marnikow/sbt.svg)](https://hub.docker.com/r/marnikow/sbt/)
[![Docker Stars](https://img.shields.io/docker/stars/marnikow/sbt.svg)](https://hub.docker.com/r/marnikow/sbt/)

[![Build Status](https://travis-ci.com/marnikow/docker-sbt.svg?branch=master)](https://travis-ci.com/marnikow/docker-sbt)
[![License](https://img.shields.io/github/license/marnikow/docker-sbt.svg)](https://raw.githubusercontent.com/marnikow/docker-sbt/master/LICENSE)

# [SBT Docker Image](https://hub.docker.com/r/marnikow/sbt/)

## Supported tags and respective `Dockerfile` links
- [`1.3.6-2.13.1`,`latest`(1.3.5/2.13.1/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.5/2.13.1/Dockerfile)
- [`1.3.6-2.13.1-alpine`,`alpine`(1.3.5/alpine/2.13.1/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.5/alpine/2.13.1/Dockerfile)
- [`1.3.5-2.13.1`(1.3.5/2.13.1/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.5/2.13.1/Dockerfile)
- [`1.3.5-2.13.1-alpine`(1.3.5/alpine/2.13.1/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.5/alpine/2.13.1/Dockerfile)
- [`1.3.4-2.13.1`(1.3.4/2.13.1/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.4/2.13.1/Dockerfile)
- [`1.3.4-2.13.1-alpine`(1.3.4/alpine/2.13.1/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.4/alpine/2.13.1/Dockerfile)
- [`1.3.6-2.12.10`(1.3.5/2.12.10/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.5/2.12.10/Dockerfile)
- [`1.3.6-2.12.10-alpine`(1.3.5/alpine/2.12.10/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.5/alpine/2.12.10/Dockerfile)
- [`1.3.5-2.12.10`(1.3.5/2.12.10/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.5/2.12.10/Dockerfile)
- [`1.3.5-2.12.10-alpine`(1.3.5/alpine/2.12.10/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.5/alpine/2.12.10/Dockerfile)
- [`1.3.4-2.12.10`(1.3.4/2.12.10/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.4/2.12.10/Dockerfile)
- [`1.3.4-2.12.10-alpine`(1.3.4/alpine/2.12.10/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.4/alpine/2.12.10/Dockerfile)

Aside from the default `latest` and `alpine` tag, each sbt version that uses the latest scala version receives the `latest-<scala-version>` or `alpine-<scala-version>` (like `latest-2.12.10`) tag.

See also the [previous versions](#previous-versions) of the SBT Docker image.

---

[![logo](https://raw.githubusercontent.com/marnikow/docker-sbt/master/logo.png)](https://scala-sbt.org/)

> [scala-sbt.org](https://scala-sbt.org/)

## Quick Start
This image provides an environment using the SBT utility to work on Scala or Java software. If no command is provided when running the image (as shown in te following example) the SBT REPL is launched:

```sh
docker run --rm --tty --interactive marnikow/sbt
```

This image may also be used in a standalone fashion by defining the following alias:

```sh
alias sbt='docker run --rm --tty --interactive --volume $PWD:/app marnikow/sbt'
```

## Image Variants
This image is based on the [`marnikow/scala`](https://hub.docker.com/r/marnikow/scala/) image to provide an environment to compile and execute Java and Scala programs. The versions of the image are composed of two parts: the version number before the hyphen references the version of the [SBT](https://scala-sbt.org/index.html) environment and the second part references to the version of the used Scala environment. Just as in the Scala repo, it is possible to use a alpine-based image by using the suffix `-alpine` .

### Previous Versions
- [`1.3.10-2.13.2`(1.3.10/2.13.2/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.10/2.13.2/Dockerfile)
- [`1.3.10-2.13.2-alpine`(1.3.10/alpine/2.13.2/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.10/alpine/2.13.2/Dockerfile)
- [`1.3.10-2.13.1`(1.3.10/2.13.1/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.10/2.13.1/Dockerfile)
- [`1.3.10-2.13.1-alpine`(1.3.10/alpine/2.13.1/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.10/alpine/2.13.1/Dockerfile)
- [`1.3.10-2.12.9`(1.3.10/2.12.9/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.10/2.12.9/Dockerfile)
- [`1.3.10-2.12.9-alpine`(1.3.10/alpine/2.12.9/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.10/alpine/2.12.9/Dockerfile)
- [`1.3.10-2.12.10`(1.3.10/2.12.10/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.10/2.12.10/Dockerfile)
- [`1.3.10-2.12.10-alpine`(1.3.10/alpine/2.12.10/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.10/alpine/2.12.10/Dockerfile)
- [`1.3.10-2.11.12`(1.3.10/2.11.12/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.10/2.11.12/Dockerfile)
- [`1.3.10-2.11.12-alpine`(1.3.10/alpine/2.11.12/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.10/alpine/2.11.12/Dockerfile)
- [`1.3.10-2.10.7`(1.3.10/2.10.7/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.10/2.10.7/Dockerfile)
- [`1.3.10-2.10.7-alpine`(1.3.10/alpine/2.10.7/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.10/alpine/2.10.7/Dockerfile)
- [`1.3.9-2.13.2`(1.3.9/2.13.2/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.9/2.13.2/Dockerfile)
- [`1.3.9-2.13.2-alpine`(1.3.9/alpine/2.13.2/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.9/alpine/2.13.2/Dockerfile)
- [`1.3.9-2.13.1`(1.3.9/2.13.1/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.9/2.13.1/Dockerfile)
- [`1.3.9-2.13.1-alpine`(1.3.9/alpine/2.13.1/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.9/alpine/2.13.1/Dockerfile)
- [`1.3.9-2.12.9`(1.3.9/2.12.9/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.9/2.12.9/Dockerfile)
- [`1.3.9-2.12.9-alpine`(1.3.9/alpine/2.12.9/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.9/alpine/2.12.9/Dockerfile)
- [`1.3.9-2.12.10`(1.3.9/2.12.10/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.9/2.12.10/Dockerfile)
- [`1.3.9-2.12.10-alpine`(1.3.9/alpine/2.12.10/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.9/alpine/2.12.10/Dockerfile)
- [`1.3.9-2.11.12`(1.3.9/2.11.12/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.9/2.11.12/Dockerfile)
- [`1.3.9-2.11.12-alpine`(1.3.9/alpine/2.11.12/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.9/alpine/2.11.12/Dockerfile)
- [`1.3.9-2.10.7`(1.3.9/2.10.7/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.9/2.10.7/Dockerfile)
- [`1.3.9-2.10.7-alpine`(1.3.9/alpine/2.10.7/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.9/alpine/2.10.7/Dockerfile)
- [`1.3.8-2.13.2`(1.3.8/2.13.2/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.8/2.13.2/Dockerfile)
- [`1.3.8-2.13.2-alpine`(1.3.8/alpine/2.13.2/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.8/alpine/2.13.2/Dockerfile)
- [`1.3.8-2.13.1`(1.3.8/2.13.1/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.8/2.13.1/Dockerfile)
- [`1.3.8-2.13.1-alpine`(1.3.8/alpine/2.13.1/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.8/alpine/2.13.1/Dockerfile)
- [`1.3.8-2.12.9`(1.3.8/2.12.9/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.8/2.12.9/Dockerfile)
- [`1.3.8-2.12.9-alpine`(1.3.8/alpine/2.12.9/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.8/alpine/2.12.9/Dockerfile)
- [`1.3.8-2.12.10`(1.3.8/2.12.10/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.8/2.12.10/Dockerfile)
- [`1.3.8-2.12.10-alpine`(1.3.8/alpine/2.12.10/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.8/alpine/2.12.10/Dockerfile)
- [`1.3.8-2.11.12`(1.3.8/2.11.12/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.8/2.11.12/Dockerfile)
- [`1.3.8-2.11.12-alpine`(1.3.8/alpine/2.11.12/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.8/alpine/2.11.12/Dockerfile)
- [`1.3.8-2.10.7`(1.3.8/2.10.7/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.8/2.10.7/Dockerfile)
- [`1.3.8-2.10.7-alpine`(1.3.8/alpine/2.10.7/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.8/alpine/2.10.7/Dockerfile)
- [`1.3.7-2.13.2`(1.3.7/2.13.2/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.7/2.13.2/Dockerfile)
- [`1.3.7-2.13.2-alpine`(1.3.7/alpine/2.13.2/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.7/alpine/2.13.2/Dockerfile)
- [`1.3.7-2.13.1`(1.3.7/2.13.1/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.7/2.13.1/Dockerfile)
- [`1.3.7-2.13.1-alpine`(1.3.7/alpine/2.13.1/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.7/alpine/2.13.1/Dockerfile)
- [`1.3.7-2.12.9`(1.3.7/2.12.9/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.7/2.12.9/Dockerfile)
- [`1.3.7-2.12.9-alpine`(1.3.7/alpine/2.12.9/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.7/alpine/2.12.9/Dockerfile)
- [`1.3.7-2.12.10`(1.3.7/2.12.10/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.7/2.12.10/Dockerfile)
- [`1.3.7-2.12.10-alpine`(1.3.7/alpine/2.12.10/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.7/alpine/2.12.10/Dockerfile)
- [`1.3.7-2.11.12`(1.3.7/2.11.12/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.7/2.11.12/Dockerfile)
- [`1.3.7-2.11.12-alpine`(1.3.7/alpine/2.11.12/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.7/alpine/2.11.12/Dockerfile)
- [`1.3.7-2.10.7`(1.3.7/2.10.7/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.7/2.10.7/Dockerfile)
- [`1.3.7-2.10.7-alpine`(1.3.7/alpine/2.10.7/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.7/alpine/2.10.7/Dockerfile)
- [`1.3.6-2.13.2`(1.3.6/2.13.2/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.6/2.13.2/Dockerfile)
- [`1.3.6-2.13.2-alpine`(1.3.6/alpine/2.13.2/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.6/alpine/2.13.2/Dockerfile)
- [`1.3.6-2.13.1`(1.3.6/2.13.1/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.6/2.13.1/Dockerfile)
- [`1.3.6-2.13.1-alpine`(1.3.6/alpine/2.13.1/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.6/alpine/2.13.1/Dockerfile)
- [`1.3.6-2.12.9`(1.3.6/2.12.9/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.6/2.12.9/Dockerfile)
- [`1.3.6-2.12.9-alpine`(1.3.6/alpine/2.12.9/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.6/alpine/2.12.9/Dockerfile)
- [`1.3.6-2.12.10`(1.3.6/2.12.10/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.6/2.12.10/Dockerfile)
- [`1.3.6-2.12.10-alpine`(1.3.6/alpine/2.12.10/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.6/alpine/2.12.10/Dockerfile)
- [`1.3.6-2.11.12`(1.3.6/2.11.12/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.6/2.11.12/Dockerfile)
- [`1.3.6-2.11.12-alpine`(1.3.6/alpine/2.11.12/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.6/alpine/2.11.12/Dockerfile)
- [`1.3.6-2.10.7`(1.3.6/2.10.7/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.6/2.10.7/Dockerfile)
- [`1.3.6-2.10.7-alpine`(1.3.6/alpine/2.10.7/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.6/alpine/2.10.7/Dockerfile)
- [`1.3.5-2.13.2`(1.3.5/2.13.2/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.5/2.13.2/Dockerfile)
- [`1.3.5-2.13.2-alpine`(1.3.5/alpine/2.13.2/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.5/alpine/2.13.2/Dockerfile)
- [`1.3.5-2.13.1`(1.3.5/2.13.1/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.5/2.13.1/Dockerfile)
- [`1.3.5-2.13.1-alpine`(1.3.5/alpine/2.13.1/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.5/alpine/2.13.1/Dockerfile)
- [`1.3.5-2.12.9`(1.3.5/2.12.9/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.5/2.12.9/Dockerfile)
- [`1.3.5-2.12.9-alpine`(1.3.5/alpine/2.12.9/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.5/alpine/2.12.9/Dockerfile)
- [`1.3.5-2.12.10`(1.3.5/2.12.10/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.5/2.12.10/Dockerfile)
- [`1.3.5-2.12.10-alpine`(1.3.5/alpine/2.12.10/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.5/alpine/2.12.10/Dockerfile)
- [`1.3.5-2.11.12`(1.3.5/2.11.12/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.5/2.11.12/Dockerfile)
- [`1.3.5-2.11.12-alpine`(1.3.5/alpine/2.11.12/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.5/alpine/2.11.12/Dockerfile)
- [`1.3.5-2.10.7`(1.3.5/2.10.7/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.5/2.10.7/Dockerfile)
- [`1.3.5-2.10.7-alpine`(1.3.5/alpine/2.10.7/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.5/alpine/2.10.7/Dockerfile)
- [`1.3.4-2.13.2`(1.3.4/2.13.2/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.4/2.13.2/Dockerfile)
- [`1.3.4-2.13.2-alpine`(1.3.4/alpine/2.13.2/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.4/alpine/2.13.2/Dockerfile)
- [`1.3.4-2.13.1`(1.3.4/2.13.1/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.4/2.13.1/Dockerfile)
- [`1.3.4-2.13.1-alpine`(1.3.4/alpine/2.13.1/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.4/alpine/2.13.1/Dockerfile)
- [`1.3.4-2.12.9`(1.3.4/2.12.9/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.4/2.12.9/Dockerfile)
- [`1.3.4-2.12.9-alpine`(1.3.4/alpine/2.12.9/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.4/alpine/2.12.9/Dockerfile)
- [`1.3.4-2.12.10`(1.3.4/2.12.10/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.4/2.12.10/Dockerfile)
- [`1.3.4-2.12.10-alpine`(1.3.4/alpine/2.12.10/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.4/alpine/2.12.10/Dockerfile)
- [`1.3.4-2.11.12`(1.3.4/2.11.12/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.4/2.11.12/Dockerfile)
- [`1.3.4-2.11.12-alpine`(1.3.4/alpine/2.11.12/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.4/alpine/2.11.12/Dockerfile)
- [`1.3.4-2.10.7`(1.3.4/2.10.7/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.4/2.10.7/Dockerfile)
- [`1.3.4-2.10.7-alpine`(1.3.4/alpine/2.10.7/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.4/alpine/2.10.7/Dockerfile)
- [`1.3.3-2.13.2`(1.3.3/2.13.2/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.3/2.13.2/Dockerfile)
- [`1.3.3-2.13.2-alpine`(1.3.3/alpine/2.13.2/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.3/alpine/2.13.2/Dockerfile)
- [`1.3.3-2.13.1`(1.3.3/2.13.1/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.3/2.13.1/Dockerfile)
- [`1.3.3-2.13.1-alpine`(1.3.3/alpine/2.13.1/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.3/alpine/2.13.1/Dockerfile)
- [`1.3.3-2.12.9`(1.3.3/2.12.9/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.3/2.12.9/Dockerfile)
- [`1.3.3-2.12.9-alpine`(1.3.3/alpine/2.12.9/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.3/alpine/2.12.9/Dockerfile)
- [`1.3.3-2.12.10`(1.3.3/2.12.10/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.3/2.12.10/Dockerfile)
- [`1.3.3-2.12.10-alpine`(1.3.3/alpine/2.12.10/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.3/alpine/2.12.10/Dockerfile)
- [`1.3.3-2.11.12`(1.3.3/2.11.12/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.3/2.11.12/Dockerfile)
- [`1.3.3-2.11.12-alpine`(1.3.3/alpine/2.11.12/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.3/alpine/2.11.12/Dockerfile)
- [`1.3.3-2.10.7`(1.3.3/2.10.7/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.3/2.10.7/Dockerfile)
- [`1.3.3-2.10.7-alpine`(1.3.3/alpine/2.10.7/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.3/alpine/2.10.7/Dockerfile)
- [`1.3.2-2.13.2`(1.3.2/2.13.2/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.2/2.13.2/Dockerfile)
- [`1.3.2-2.13.2-alpine`(1.3.2/alpine/2.13.2/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.2/alpine/2.13.2/Dockerfile)
- [`1.3.2-2.13.1`(1.3.2/2.13.1/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.2/2.13.1/Dockerfile)
- [`1.3.2-2.13.1-alpine`(1.3.2/alpine/2.13.1/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.2/alpine/2.13.1/Dockerfile)
- [`1.3.2-2.12.9`(1.3.2/2.12.9/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.2/2.12.9/Dockerfile)
- [`1.3.2-2.12.9-alpine`(1.3.2/alpine/2.12.9/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.2/alpine/2.12.9/Dockerfile)
- [`1.3.2-2.12.10`(1.3.2/2.12.10/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.2/2.12.10/Dockerfile)
- [`1.3.2-2.12.10-alpine`(1.3.2/alpine/2.12.10/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.2/alpine/2.12.10/Dockerfile)
- [`1.3.2-2.11.12`(1.3.2/2.11.12/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.2/2.11.12/Dockerfile)
- [`1.3.2-2.11.12-alpine`(1.3.2/alpine/2.11.12/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.2/alpine/2.11.12/Dockerfile)
- [`1.3.2-2.10.7`(1.3.2/2.10.7/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.2/2.10.7/Dockerfile)
- [`1.3.2-2.10.7-alpine`(1.3.2/alpine/2.10.7/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.2/alpine/2.10.7/Dockerfile)
- [`1.3.1-2.13.2`(1.3.1/2.13.2/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.1/2.13.2/Dockerfile)
- [`1.3.1-2.13.2-alpine`(1.3.1/alpine/2.13.2/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.1/alpine/2.13.2/Dockerfile)
- [`1.3.1-2.13.1`(1.3.1/2.13.1/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.1/2.13.1/Dockerfile)
- [`1.3.1-2.13.1-alpine`(1.3.1/alpine/2.13.1/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.1/alpine/2.13.1/Dockerfile)
- [`1.3.1-2.12.9`(1.3.1/2.12.9/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.1/2.12.9/Dockerfile)
- [`1.3.1-2.12.9-alpine`(1.3.1/alpine/2.12.9/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.1/alpine/2.12.9/Dockerfile)
- [`1.3.1-2.12.10`(1.3.1/2.12.10/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.1/2.12.10/Dockerfile)
- [`1.3.1-2.12.10-alpine`(1.3.1/alpine/2.12.10/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.1/alpine/2.12.10/Dockerfile)
- [`1.3.1-2.11.12`(1.3.1/2.11.12/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.1/2.11.12/Dockerfile)
- [`1.3.1-2.11.12-alpine`(1.3.1/alpine/2.11.12/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.1/alpine/2.11.12/Dockerfile)
- [`1.3.1-2.10.7`(1.3.1/2.10.7/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.1/2.10.7/Dockerfile)
- [`1.3.1-2.10.7-alpine`(1.3.1/alpine/2.10.7/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.1/alpine/2.10.7/Dockerfile)
- [`1.3.0-2.13.2`(1.3.0/2.13.2/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.0/2.13.2/Dockerfile)
- [`1.3.0-2.13.2-alpine`(1.3.0/alpine/2.13.2/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.0/alpine/2.13.2/Dockerfile)
- [`1.3.0-2.13.1`(1.3.0/2.13.1/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.0/2.13.1/Dockerfile)
- [`1.3.0-2.13.1-alpine`(1.3.0/alpine/2.13.1/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.0/alpine/2.13.1/Dockerfile)
- [`1.3.0-2.12.9`(1.3.0/2.12.9/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.0/2.12.9/Dockerfile)
- [`1.3.0-2.12.9-alpine`(1.3.0/alpine/2.12.9/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.0/alpine/2.12.9/Dockerfile)
- [`1.3.0-2.12.10`(1.3.0/2.12.10/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.0/2.12.10/Dockerfile)
- [`1.3.0-2.12.10-alpine`(1.3.0/alpine/2.12.10/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.0/alpine/2.12.10/Dockerfile)
- [`1.3.0-2.11.12`(1.3.0/2.11.12/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.0/2.11.12/Dockerfile)
- [`1.3.0-2.11.12-alpine`(1.3.0/alpine/2.11.12/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.0/alpine/2.11.12/Dockerfile)
- [`1.3.0-2.10.7`(1.3.0/2.10.7/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.0/2.10.7/Dockerfile)
- [`1.3.0-2.10.7-alpine`(1.3.0/alpine/2.10.7/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.3.0/alpine/2.10.7/Dockerfile)
- [`1.2.8-2.13.2`(1.2.8/2.13.2/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.2.8/2.13.2/Dockerfile)
- [`1.2.8-2.13.2-alpine`(1.2.8/alpine/2.13.2/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.2.8/alpine/2.13.2/Dockerfile)
- [`1.2.8-2.13.1`(1.2.8/2.13.1/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.2.8/2.13.1/Dockerfile)
- [`1.2.8-2.13.1-alpine`(1.2.8/alpine/2.13.1/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.2.8/alpine/2.13.1/Dockerfile)
- [`1.2.8-2.12.9`(1.2.8/2.12.9/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.2.8/2.12.9/Dockerfile)
- [`1.2.8-2.12.9-alpine`(1.2.8/alpine/2.12.9/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.2.8/alpine/2.12.9/Dockerfile)
- [`1.2.8-2.12.10`(1.2.8/2.12.10/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.2.8/2.12.10/Dockerfile)
- [`1.2.8-2.12.10-alpine`(1.2.8/alpine/2.12.10/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.2.8/alpine/2.12.10/Dockerfile)
- [`1.2.8-2.11.12`(1.2.8/2.11.12/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.2.8/2.11.12/Dockerfile)
- [`1.2.8-2.11.12-alpine`(1.2.8/alpine/2.11.12/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.2.8/alpine/2.11.12/Dockerfile)
- [`1.2.8-2.10.7`(1.2.8/2.10.7/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.2.8/2.10.7/Dockerfile)
- [`1.2.8-2.10.7-alpine`(1.2.8/alpine/2.10.7/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/1.2.8/alpine/2.10.7/Dockerfile)


## License

### The MIT License (MIT)

Copyright © `2019` `marnikow`

Permission is hereby granted, free of charge, to any person obtaining a
copy of this software and associated documentation files (the
“Software”), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be included
in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
