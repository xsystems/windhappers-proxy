#!/bin/sh

NAME=`git remote get-url origin | cut --delimiter='/' --fields=2 | cut --delimiter='.' --fields=1`
VERSION=${VERSION:-latest}

docker build --tag  xsystems/${NAME}:${VERSION} .
docker tag          xsystems/${NAME}:${VERSION} xsystems/${NAME}:latest
