#!/bin/sh

DOCKER_OPT=""
grep "myregistry" /etc/hosts -q && DOCKER_OPT="--insecure-registry myregistry:5000"

/usr/bin/dockerd -p /run/dockerd.pid ${DOCKER_OPT} &

gitlab-ci-multi-runner register -n || exit 1

exec gitlab-ci-multi-runner run --user=gitlab-runner --working-directory=/home/gitlab-runner "$@"
