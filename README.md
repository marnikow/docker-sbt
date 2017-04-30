![Docker Automated buil](https://img.shields.io/docker/automated/bigtruedata/sbt.svg?style=plastic)
![Docker Build Statu](https://img.shields.io/docker/build/bigtruedata/sbt.svg?style=plastic)
![Docker Pulls](https://img.shields.io/docker/pulls/bigtruedata/sbt.svg?style=plastic)
![Docker Stars](https://img.shields.io/docker/stars/bigtruedata/sbt.svg?style=plastic)
![license](https://img.shields.io/github/license/bigtruedata/docker-sbt.svg?style=plastic)

# [Scala Docker Image](https://hub.docker.com/r/bigtruedata/sbt/)

## Supported tags and respective `Dockerfile` links
- [`0.13.15-2.13.0-M1`(0.13.15/2.13.0-M1/Dockerfile)](https://github.com/bigtruedata/docker-sbt/blob/master/0.13.15/2.13.0-M1/Dockerfile)
- [`0.13.15-2.12.2`,`0.13.13-2.12`,`latest`(0.13.15/2.12.2/Dockerfile)](https://github.com/bigtruedata/docker-sbt/blob/master/0.13.15/2.12.2/Dockerfile)
- [`0.13.15-2.12.1`(0.13.15/2.12.1/Dockerfile)](https://github.com/bigtruedata/docker-sbt/blob/master/0.13.15/2.12.1/Dockerfile)
- [`0.13.15-2.11.8`,`0.13.13-2.11`(0.13.15/2.11.8/Dockerfile)](https://github.com/bigtruedata/docker-sbt/blob/master/0.13.15/2.11.8/Dockerfile)
- [`0.13.15-2.10.6`,`0.13.13-2.10`(0.13.15/2.10.6/Dockerfile)](https://github.com/bigtruedata/docker-sbt/blob/master/0.13.15/2.10.6/Dockerfile)
- [`0.13.13-2.13.0-M1`(0.13.13/2.13.0-M1/Dockerfile)](https://github.com/bigtruedata/docker-sbt/blob/master/0.13.13/2.13.0-M1/Dockerfile)
- [`0.13.13-2.12.2`,`0.13.13-2.12`(0.13.13/2.12.2/Dockerfile)](https://github.com/bigtruedata/docker-sbt/blob/master/0.13.13/2.12.2/Dockerfile)
- [`0.13.13-2.12.1`(0.13.13/2.12.1/Dockerfile)](https://github.com/bigtruedata/docker-sbt/blob/master/0.13.13/2.12.1/Dockerfile)
- [`0.13.13-2.11.8`,`0.13.13-2.11`(0.13.13/2.11.8/Dockerfile)](https://github.com/bigtruedata/docker-sbt/blob/master/0.13.13/2.11.8/Dockerfile)
- [`0.13.13-2.10.6`,`0.13.13-2.10`(0.13.13/2.10.6/Dockerfile)](https://github.com/bigtruedata/docker-sbt/blob/master/0.13.13/2.10.6/Dockerfile)

---

![logo](https://raw.githubusercontent.com/bigtruedata/docker-sbt/master/logo.png)

> [scala-sbt.org](http://www.scala-sbt.org/)

## Quick Start
This image provides an environment using the SBT utility to work on Scala or Java software. If no command is provided when running the image (as shown in te following example) the SBT REPL is launched:

```sh
docker run --rm --tty --interactive bigtruedata/sbt
```

This image may also be used in a standalone fashion by defining the following alias:

```sh
alias sbt='docker run --rm --tty --interactive --volume $PWD:/app bigtruedata/sbt'
```

## Versions
This image is based on the [`bigtruedata/scala`](https://hub.docker.com/r/bigtruedata/scala/) image to provide an environment to compile and execute Java and Scala programs. The versions of the image are composed of two parts: the version number before the hyphen references the version of the [SBT](http://www.scala-sbt.org/index.html) environment and the second part references to the version of the used Scala environment.
