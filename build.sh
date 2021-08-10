#!/bin/bash

podman run \
    --root=$PWD/podman \
    -v $PWD/output:/output:rw \
    -v $PWD/scripts:/scripts:ro \
    --name mwoffliner_wikipedia_en_endless \
    -ti --rm \
    ghcr.io/openzim/mwoffliner:1.11.8 /scripts/download.sh

./scripts/create-index.py output/wikipedia_en_endless_maxi_`date +%Y-%m`.zim
