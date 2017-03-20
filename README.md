[![dockeri.co](http://dockeri.co/image/bigtruedata/sbt)](https://hub.docker.com/r/bigtruedata/sbt/)

# Supported tags and respective `Dockerfile` links
- [`2.12.1`,`2.12`,`latest`(2.12.1/Dockerfile)](https://github.com/bigtruedata/docker-sbt/blob/master/2.12.1/Dockerfile)
- [`2.11.8`,`2.11`(2.11.8/Dockerfile)](https://github.com/bigtruedata/docker-sbt/blob/master/2.11.8/Dockerfile)
- [`2.10.6`,`2.10`(2.10.6/Dockerfile)](https://github.com/bigtruedata/docker-sbt/blob/master/2.10.6/Dockerfile)

This image may be used in a standalone fashion by defining the following aliases:
```sh
$ alias sbt='docker run --rm --tty --interactive --volume $PWD:/app bigtruedata/sbt'
```

# Versions
This image is based on the [`bigtruedata/scala`](https://hub.docker.com/r/bigtruedata/scala/) image to provide an environment to compile and execute Java and Scala programs. The versions of the image are related to the versions of the base Scala image.
