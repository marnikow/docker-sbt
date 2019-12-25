# Generated automatically by update.sh
# Do no edit this file

FROM marnikow/scala:2.10.7

Run wget -O- "https://piccolo.link/sbt-1.3.2.tgz" \
    |  tar xzf - -C /usr/local --strip-components=1 \
    && sbt exit

VOLUME /app
WORKDIR /app

CMD ["sbt"]
