#!/usr/bin/env bash

IMAGE_NAME="ypereirareis/symfony-deprecation-detector"

function build() {
  docker build -t "${IMAGE_NAME}" .
}

function help() {
  docker run -it --rm "${IMAGE_NAME}" | grep -E "Checking your application for deprecations - this could take a while"
}

function run() {
  docker run -it -v $(pwd):/app --rm "${IMAGE_NAME}"
}

function test_all() {
  echo "=== START"

  build
  help
  run

  echo "=== END"
}

test_all