#!/usr/bin/env bash
set -e

docker build -t geowa4/fluentd fluentd
docker push geowa4/fluentd
