#!/bin/bash

set -eo pipefail

declare -a sbt_versions=(
  0.13.15
  0.13.14
  0.13.13
)

declare -a scala_versions=(
  2.13.0-M1
  2.12.2
  2.12.1
  2.11.11
  2.11.8
  2.10.6
)

for sbt_version in "${sbt_versions[@]}"
do
  for scala_version in "${scala_versions[@]}"
  do
    dirname="${sbt_version}/${scala_version}"

    rm -rf "$dirname"
    mkdir -p "$dirname"

    sed -e "s/<sbt-version>/$sbt_version/g" Dockerfile.template \
    | sed -e "s/<scala-version>/$scala_version/g" - > "$dirname/Dockerfile"
  done
done
