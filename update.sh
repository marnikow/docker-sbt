#!/bin/bash

set -eo pipefail

DOCKER_ACC=marnikow
DOCKER_REPO=sbt
DOCKER_SBT_LATEST=2.13.1
DOCKER_SCALA_LATEST=2.13.1
SBT_VERSIONS_FILE="sbt_versions.txt"
SCALA_VERSIONS_FILE="scala_versions.txt"

sbt_versions="$(cat $SBT_VERSIONS_FILE)"
scala_versions="$(cat $SCALA_VERSIONS_FILE)"

# $1 sbt version
# $2 is it alpine
get_sbt_folder() {
  if [[ $2 -eq 0 ]]; then
    FOLDER="$1"
  else
    FOLDER="$1"/alpine
  fi
  echo "$FOLDER"
}

# $1 sbt version
# $2 scala version
# $3 is it alpine
get_scala_folder() {
  BASE_FOLDER="$(get_sbt_folder "$1" "$3")"
  echo "$BASE_FOLDER/$2"
}

# $1 sbt version
# $2 scala version
# $3 is it alpine
get_tag() {
  if [[ $3 -eq 0 ]]; then
    TAG="$1-$2"
  else
    TAG="$1-$2-alpine"
  fi
  echo "$TAG"
}

# $1 sbt version
# $2 scala version
# $3 is it alpine
get_full_tag() {
  echo "$DOCKER_ACC/$DOCKER_REPO:$(get_tag "$1" "$2" "$3")"
}

# $1 sbt version
# $2 scala version
# $3 is it alpine
generate() {
  echo "Generating Dockerfile for SBT v$1 (Scala v$2) ($3)"
  FOLDER="$(get_scala_folder "$1" "$2" "$3")"
  if [[ $3 -eq 0 ]]; then
    TEMPLATE="templates/dockerfile/standard.template"
  else
    TEMPLATE="templates/dockerfile/alpine.template"
  fi

  mkdir -p "$FOLDER"

  sed -e "s/<sbt-version>/$1/g" -e "s/<scala-version>/$2/g" "$TEMPLATE" >"$FOLDER/Dockerfile"
}

print_for_travis() {
  while IFS= read -r sbt_version; do
    while IFS= read -r scala_version; do
      echo "  - SBT_VERSION=${sbt_version} SCALA_VERSION=${scala_version}"
    done <<<"$scala_versions"
  done <<<"$sbt_versions"
}

generate_travis_yml() {
  vs="$(print_for_travis)"
  awk -v v="$vs" '{gsub(/<versions>/,v)}1' "templates/.travis.yml.template" >".travis.yml"
}

print_for_readme() {
  while IFS= read -r sbt_version; do
    while IFS= read -r scala_version; do
      folder="$(get_scala_folder "$sbt_version" "$scala_version")"
      tag="$(get_tag "$sbt_version" "$scala_version")"
      echo "- [\`$tag\`($folder/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/$folder/Dockerfile)"
      folder="$(get_scala_folder "$sbt_version" "$scala_version" 1)"
      tag="$(get_tag "$sbt_version" "$scala_version" 1)"
      echo "- [\`$tag\`($folder/Dockerfile)](https://github.com/marnikow/docker-sbt/blob/master/$folder/Dockerfile)"
    done <<<"$scala_versions"
  done <<<"$sbt_versions"
}

generate_readme_md() {
  vs="$(print_for_readme)"
  awk -v v="$vs" '{gsub(/<prev_versions>/,v)}1' "templates/README.md.template" >"README.md"
}

update() {
  while IFS= read -r sbt_version; do
    rm -rf "$(get_sbt_folder "$version")"
    while IFS= read -r scala_version; do
      generate "$sbt_version" "$scala_version"
      generate "$sbt_version" "$scala_version" 1
    done <<<"$scala_versions"
  done <<<"$sbt_versions"
  generate_travis_yml
  generate_readme_md
}

# $1 optional target file
update_sbt_list() {
  if [[ -z $1 ]]; then
    # nothing specified
    TARGET="$SBT_VERSIONS_FILE"
  else
    TARGET="$1"
  fi
  echo "Saving new sbt list to $TARGET"
  wget --timeout=5 -O - -q "https://scala-sbt.org/download.html" | xmllint --html --xpath '//div[@id="main"]' - 2>/dev/null | xmlstarlet sel -t -v 'div/ul/li/text()' - | grep -Po '\d+\.\d+\.\d+' >"$TARGET"
}

# $1 optional target file
update_scala_list() {
  if [[ -z $1 ]]; then
    # nothing specified
    TARGET="$SCALA_VERSIONS_FILE"
  else
    TARGET="$1"
  fi
  echo "Saving new scala list to $TARGET"
  wget --timeout=5 -O "$TARGET" -q "https://raw.githubusercontent.com/marnikow/docker-scala/master/versions.txt"
}

# $1 optional target file for sbt
# $2 optional target file for scala
update_lists() {
  update_sbt_list "$1"
  update_scala_list "$2"
}

# $1 sbt version
# $2 scala version
# $3 is it alpine
pull_docker_version() {
  TAG="$(get_full_tag "$1" "$2" "$3")"
  docker pull "$TAG"
}

# $1 sbt version
# $2 scala version
# $3 is it alpine
build_docker_version() {
  TAG="$(get_full_tag "$1" "$2" "$3")"
  FOLDER="$(get_scala_folder "$1" "$2" "$3")"
  docker build -t "$TAG" "$FOLDER"
  if [[ "DOCKER_SBT_LATEST" == "$1" && "DOCKER_SCALA_LATEST" == "$2" ]]; then
    if [[ $3 -eq 0 ]]; then
      TAG_LATEST="$DOCKER_ACC/$DOCKER_REPO:latest"
    else
      TAG_LATEST="$DOCKER_ACC/$DOCKER_REPO:alpine"
    fi
    docker tag "$TAG" "$TAG_LATEST"
  fi
}

# $1 sbt version
# $2 scala version
# $3 is it alpine
test_docker_version() {
  TAG="$(get_full_tag "$1" "$2" "$3")"
  echo "Testing $TAG"
  if tests/sbt.sh "$TAG" "$1"; then
    echo "Testing $TAG succeeded"
    true
  else
    echo "Testing $TAG failed"
    false
  fi
}

# $1 sbt version
# $2 scala version
# $3 is it alpine
push_docker_version() {
  TAG="$(get_full_tag "$1" "$2" "$3")"
  docker push "$TAG"
}

# $1 sbt version
# $2 scala version
# $3 is it alpine
has_docker_image() {
  TAG="$(get_full_tag "$1" "$2" "$3")"
  if [[ "$(docker images -q "$TAG" 2>/dev/null)" == "" ]]; then
    false
  else
    true
  fi
}

# $1 sbt version
# $2 scala version
# $3 is it alpine
check_and_push_docker() {
  pull_docker_version "$1" "$2" "$3" || true
  if ! (has_docker_image "$1" "$2" "$3"); then
    echo "Building Dockerfile for SBT v$1 (Scala v$2) ($3)"
    build_docker_version "$1" "$2" "$3"
    push_docker_version "$1" "$2" "$3"
  fi
}

# $1 sbt version
# $2 scala version
check_and_push_docker_versions() {
  if (check_and_push_docker "$1" "$2" && check_and_push_docker "$1" "$2" 1); then
    true
  else
    false
  fi
}

versions_to_docker() {
  #  docker pull -a "$DOCKER_ACC"/"$DOCKER_REPO"
  while IFS= read -r sbt_version; do
    while IFS= read -r scala_version; do
      check_and_push_docker_versions "$sbt_version" "$scala_version"
    done <<<"$scala_versions"
  done <<<"$sbt_versions"
}

if [[ -z $1 ]]; then
  # nothing specified
  update
  exit 0
else
  if [[ $1 == "update-lists" ]]; then
    update_lists "$2" "$3"
    exit $?
  elif [[ $1 == "update-sbt-list" ]]; then
    update_sbt_list "$2"
    exit $?
  elif [[ $1 == "update-scala-list" ]]; then
    update_scala_list "$2"
    exit $?
  elif [[ $1 == "travis-yml" ]]; then
    generate_travis_yml
    exit $?
  elif [[ $1 == "readme-md" ]]; then
    generate_readme_md
    exit $?
  elif [[ $1 == "folder" ]]; then
    get_folder "$2" "$3" "$4"
    exit $?
  elif [[ $1 == "tag" ]]; then
    get_tag "$2" "$3" "$4"
    exit $?
  elif [[ $1 == "full-tag" ]]; then
    get_full_tag "$2" "$3" "$4"
    exit $?
  elif [[ $1 == "pull" ]]; then
    echo "Pulling SBT v$2 (Scala v$3) ($4)"
    pull_docker_version "$2" "$3" "$4"
    exit $?
  elif [[ $1 == "build" ]]; then
    echo "Building SBT v$2 (Scala v$3) ($4)"
    build_docker_version "$2" "$3" "$4"
    exit $?
  elif [[ $1 == "test" ]]; then
    echo "Testing SBT v$2 (Scala v$3) ($4)"
    test_docker_version "$2" "$3" "$4"
    exit $?
  elif [[ $1 == "push" ]]; then
    echo "Pushing SBT v$2 (Scala v$3) ($4)"
    push_docker_version "$2" "$3" "$4"
    exit $?
  elif [[ $1 == "docker" ]]; then
    echo "Pushing all new versions to Docker"
    versions_to_docker
    exit $?
  elif [[ $1 == "travis" ]]; then
    echo "Checking, building, testing and pushing SBT v$2 (Scala v$3)"
    check_and_push_docker_versions "$2" "$3"
    exit $?
  fi
  echo "First arg not understood"
  exit 2
fi
exit 1
