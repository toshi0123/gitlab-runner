FROM alpine:edge

RUN apk upgrade --no-cache && apk add --no-cache docker xz

ADD https://gitlab-runner-downloads.s3.amazonaws.com/latest/binaries/gitlab-runner-linux-amd64 /usr/bin/gitlab-runner
RUN chmod +x /usr/bin/gitlab-runner && \
    adduser -s /bin/sh -g 'GitLab Runner' -D gitlab-runner && \
    adduser gitlab-runner docker

VOLUME ["/etc/gitlab-runner", "/home/gitlab-runner"]

COPY docker-entrypoint.sh /
ENTRYPOINT ["/bin/sh","/docker-entrypoint.sh"]
