#!/usr/bin/env bash

set -eu

FLY="${FLY_CLI:-fly}"

${FLY} -t "${CONCOURSE_TARGET:-bosh}" set-pipeline -p "socks5-proxy" \
    -c ci/pipeline.yml
