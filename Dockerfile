FROM alpine:latest as confd

# ARG CONFD_VERSION=0.14.0

RUN apk add --no-cache curl ca-certificates

ONBUILD ARG CONFD_VERSION
ONBUILD RUN curl -f -L -o /usr/local/bin/confd https://github.com/kelseyhightower/confd/releases/download/v${CONFD_VERSION}/confd-${CONFD_VERSION}-linux-amd64 && chmod +x /usr/local/bin/confd
