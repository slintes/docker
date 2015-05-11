FROM progrium/busybox

# pushed to docker as slintes/etcd

MAINTAINER Marc Sluiter <marc.sluiter@luminis.eu>

RUN opkg-install curl

# install etcd
ENV ETCD_VERSION v0.4.9
RUN mkdir /download && cd /download && (curl -kL https://github.com/coreos/etcd/releases/download/$ETCD_VERSION/etcd-$ETCD_VERSION-linux-amd64.tar.gz | gunzip | tar -xf -) && cp */etcd /usr/bin && cd / && rm -rf /download

ENTRYPOINT /bin/sh -c '/usr/bin/etcd -addr=`hostname -i`:4001 -peer-addr=`hostname -i`:7001'

EXPOSE 4001 7001