# Generated automatically by update.sh
# Do no edit this file

FROM marnikow/scala:2.10.7-alpine

# Install build dependencies
RUN apk add --no-cache --virtual=.dependencies tar wget

Run wget -O- "https://piccolo.link/sbt-1.3.6.tgz" \
    |  tar xzf - -C /usr/local --strip-components=1 \
    && sbt exit

# Remove build dependencies
RUN apk del --no-cache .dependencies

VOLUME /app
WORKDIR /app

CMD ["sbt"]
