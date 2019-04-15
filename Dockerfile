FROM alpine

ENV RANCHER_CLI_VERSION=v0.6.13

RUN apk add --no-cache wget ca-certificates && \
    wget -qO- https://github.com/rancher/cli/releases/download/${RANCHER_CLI_VERSION}/rancher-linux-amd64-${RANCHER_CLI_VERSION}.tar.gz | tar xvz -C /tmp && \
    mv /tmp/rancher-${RANCHER_CLI_VERSION}/rancher /usr/local/bin/rancher && \
    chmod +x /usr/local/bin/rancher && \
    rm -rf /tmp/*
