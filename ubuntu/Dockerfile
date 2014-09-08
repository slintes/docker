FROM ubuntu

MAINTAINER Marc Sluiter <marc.sluiter@luminis.eu>

ENV DEBIAN_FRONTEND noninteractive

# update and set locale
RUN apt-get -y update && \
	apt-get -y upgrade && \
	locale-gen en_US.UTF-8

# some properties
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV HOME /root

# set timezone
RUN echo "Europe/Berlin" | sudo tee /etc/timezone
RUN dpkg-reconfigure --frontend noninteractive tzdata

# install some common used programs
RUN apt-get install -y --force-yes wget curl unzip

# run bash
CMD /bin/bash