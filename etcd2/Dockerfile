# pushed to docker as slintes/etcd2

# https://github.com/gliderlabs/docker-alpine
FROM gliderlabs/alpine:3.2

MAINTAINER Marc Sluiter <marc.sluiter@luminis.eu>

RUN apk --update add curl

# install etcd
ENV ETCD_INSTALL_VERSION v2.3.1
RUN mkdir /download && cd /download && (curl -kL https://github.com/coreos/etcd/releases/download/$ETCD_INSTALL_VERSION/etcd-$ETCD_INSTALL_VERSION-linux-amd64.tar.gz | gunzip | tar -xf -) && cp */etcd /usr/bin && cd / && rm -rf /download

# listen on all interfaces
ENV ETCD_LISTEN_CLIENT_URLS=http://0.0.0.0:2379,http://0.0.0.0:4001
ENV ETCD_ADVERTISE_CLIENT_URLS=http://localhost:2379

ENTRYPOINT /bin/sh -c '/usr/bin/etcd'

EXPOSE 2379 2380 4001 7001
