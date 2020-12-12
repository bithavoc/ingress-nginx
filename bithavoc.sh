#!/bin/bash
set -e

if [ -z "${BITHAVOC_TAG}" ]; then
    echo "you need to set \$BITHAVOC_TAG first"
    exit 1
fi

export TAG="${BITHAVOC_TAG}"
export REGISTRY="bithavoc"
make build image
docker push bithavoc/controller:$TAG
