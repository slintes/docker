# pushed to docker as slintes/dev

FROM slintes/jdk8

MAINTAINER Marc Sluiter <marc.sluiter@luminis.eu>

# install some tools we want to use

RUN opkg-install bash git ruby-gems libstdcpp && \
  rm -f /lib/libpthread.so.0 && \
  ln -s /lib/libpthread-2.18.so /lib/libpthread.so.0
  
# install nodejs
ENV NODEJS_VERSION v0.12.0
RUN curl -s http://nodejs.org/dist/$NODEJS_VERSION/node-$NODEJS_VERSION-linux-x64.tar.gz | gunzip | tar -xf - -C /opt/
ENV PATH /opt/node-$NODEJS_VERSION-linux-x64/bin:$PATH

# fix problems with node vs nodejs naming
RUN ln -s /opt/node-$NODEJS_VERSION-linux-x64/bin/node /opt/node-$NODEJS_VERSION-linux-x64/bin/nodejs

# install azure cli
RUN npm install azure-cli -g

# expose at least 1 port, the chance we need 8080 is high...
EXPOSE 8080

CMD /bin/bash