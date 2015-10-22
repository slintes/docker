# pushed to docker as slintes/jdk8

# https://github.com/gliderlabs/docker-alpine
FROM slintes/alpine-glibc

MAINTAINER Marc Sluiter <marc.sluiter@luminis.eu>

# set some env variables
ENV JAVA_VERSION_MAJOR 8
ENV JAVA_VERSION_MINOR 65
ENV JAVA_VERSION_BUILD b17

ENV JAVA_VERSION ${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}
ENV JAVA_HOME /usr/jdk1.${JAVA_VERSION_MAJOR}.0_${JAVA_VERSION_MINOR}

# install Java
RUN curl \
  --location \
  --cacert /etc/ssl/certs/ca-cert-GeoTrust_Global_CA.pem \
  --header "Cookie: oraclelicense=accept-securebackup-cookie;" \
  "http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION}-${JAVA_VERSION_BUILD}/jdk-${JAVA_VERSION}-linux-x64.tar.gz" \
    | gunzip \
    | tar x -C /usr/ \
    && rm -rf $JAVA_HOME/src.zip $JAVA_HOME/javafx-src.zip $JAVA_HOME/man

# update PATH
ENV PATH $JAVA_HOME/bin:$PATH

# set default entrypoint and command
CMD [ "java", "-version" ]

