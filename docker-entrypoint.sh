#!/bin/sh

/usr/bin/dockerd -p /run/dockerd.pid &

exec gitlab-ci-multi-runner run --user=gitlab-runner --working-directory=/home/gitlab-runner
