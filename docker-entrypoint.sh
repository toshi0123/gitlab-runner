#!/bin/sh

/usr/bin/dockerd -p /run/dockerd.pid &

gitlab-ci-multi-runner install --user=gitlab-runner --working-directory=/home/gitlab-runner

exec gitlab-ci-multi-runner run --user=gitlab-runner --working-directory=/home/gitlab-runner
