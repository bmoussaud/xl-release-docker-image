#!/usr/bin/env bash
docker build --build-arg XLR_VERSION=8.2.0 --tag bmoussaud/xl-release-with-db:8.2.3  -f debian-slim/Dockerfile .
#docker run -it --entrypoint "bash"  bmoussaud/xl-release-with-db:8.2.3
