FROM alpine:edge

RUN apk upgrade --no-cache && apk add --no-cache docker

ADD https://gitlab-ci-multi-runner-downloads.s3.amazonaws.com/latest/binaries/gitlab-ci-multi-runner-linux-amd64 /usr/bin/gitlab-ci-multi-runner
RUN chmod +x /usr/bin/gitlab-ci-multi-runner && \
    ln -s /usr/bin/gitlab-ci-multi-runner /usr/bin/gitlab-runner && \
    adduser -s /bin/sh -g 'GitLab Runner' -D gitlab-runner

VOLUME ["/etc/gitlab-runner", "/home/gitlab-runner"]

COPY docker-entrypoint.sh /
ENTRYPOINT ["/bin/sh","/docker-entrypoint.sh"]
