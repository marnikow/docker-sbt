#!/bin/sh

image=${1}
sbt_version=${2}

echo -n "Sbt can print its own version... "
docker run --rm "$image" sbt sbtVersion 2>/dev/null | grep "$sbt_version"
if [ "$?" -eq 0 ]; then
  echo "success"
else
  echo "failure"
  exit 1
fi
exit 0
