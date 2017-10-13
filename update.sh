#!/bin/bash

set -eo pipefail

declare -a sbt_versions=(
  1.0.2
  1.0.1
  1.0.0
  0.13.15
)

declare -a scala_versions=(
  2.12.3
  2.12.2
  2.12.1
  2.12.0
  2.11.11
  2.11.10
  2.11.9
  2.11.8
  2.11.7
  2.11.6
  2.11.5
  2.11.4
  2.11.3
  2.11.2
  2.11.1
  2.11.0
  2.10.6
  2.10.5
  2.10.4
  2.10.3
  2.10.2
)

generate_standard() {
  echo "Generating Dockerfile for SBT v$1 (Scala v$2)"
  mkdir -p "$1/$2"

  sed -e "s/<sbt-version>/$1/g" dockerfile/standard.template \
  | sed -e "s/<scala-version>/$2/g" - > "$1/$2/Dockerfile"
}

generate_alpine() {
  echo "Generating Dockerfile for alpine SBT v$1 (Scala v$2)"
  mkdir -p "$1/alpine/$2"

  sed -e "s/<sbt-version>/$1/g" dockerfile/alpine.template \
  | sed -e "s/<scala-version>/$2/g" - > "$1/alpine/$2/Dockerfile"
}

for sbt_version in "${sbt_versions[@]}"
do
  rm -rf "${sbt_version}"
  mkdir -p "${sbt_version}"

  for scala_version in "${scala_versions[@]}"
  do
    generate_standard "${sbt_version}" "${scala_version}"
    generate_alpine "${sbt_version}" "${scala_version}"
  done
done
