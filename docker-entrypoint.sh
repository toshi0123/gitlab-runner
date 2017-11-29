#!/bin/sh

/usr/bin/dockerd -p /run/dockerd.pid --insecure-registry myregistry:5000 &

gitlab-ci-multi-runner install --user=gitlab-runner --working-directory=/home/gitlab-runner

exec gitlab-ci-multi-runner run --user=gitlab-runner --working-directory=/home/gitlab-runner "$@"
