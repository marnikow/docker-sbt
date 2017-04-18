#!/bin/bash

set -eo pipefail

declare -a versions=(
  2.12.2
  2.12.1
  2.11.8
  2.10.6
)

for version in "${versions[@]}"
do
  rm -rf "$version"
  mkdir "$version"

  cat > "$version/Dockerfile" <<-END
# Generated automatically by update.sh
# Do no edit this file

FROM bigtruedata/scala:$version

# Install build dependencies
RUN apk add --no-cache --virtual=.dependencies tar

RUN wget -O- "http://dl.bintray.com/sbt/native-packages/sbt/0.13.13/sbt-0.13.13.tgz" \\
    |  tar xzf - -C /usr/local --strip-components=1 \\
    && sbt exit

# Remove build dependencies
RUN apk del --no-cache .dependencies

VOLUME /app
WORKDIR /app

CMD ["sbt"]
END

done
