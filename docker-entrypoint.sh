#!/bin/sh

DOCKER_OPT=""
grep "myregistry" /etc/hosts -q && DOCKER_OPT="--insecure-registry myregistry:5000"

/usr/bin/dockerd -p /run/dockerd.pid ${DOCKER_OPT} &

if [ ! -e /etc/gitlab-runner/config.toml ];then
gitlab-runner register -n || exit 1
fi

exec gitlab-runner run --user=gitlab-runner --working-directory=/home/gitlab-runner "$@"
