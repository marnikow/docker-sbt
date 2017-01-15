# The [`bigtruedata/sbt`](https://hub.docker.com/r/bigtruedata/sbt/) image

[![Docker Pulls](https://img.shields.io/docker/pulls/bigtruedata/sbt.svg)](https://hub.docker.com/r/bigtruedata/sbt/)
[![Docker Stars](https://img.shields.io/docker/stars/bigtruedata/sbt.svg)](https://hub.docker.com/r/bigtruedata/sbt/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This repository contains the build files to generate Docker images that provide the SBT environment. The image is based in the [`bigtruedata/scala`](https://hub.docker.com/r/bigtruedata/scala/) image to provide a solution to build Scala projects using SBT.

This image may be used in a standalone fashion by defining the following aliases:
```sh
$ alias sbt='docker run --rm --tty --interactive --volume $PWD:/app bigtruedata/sbt sbt'
```
