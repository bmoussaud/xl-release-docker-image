#!/usr/bin/env bash
docker build --build-arg XLR_VERSION=8.2.0 --tag bmoussaud/xl-release-with-db:8.2.1  -f debian-slim/Dockerfile .
