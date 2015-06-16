FROM slintes/jre8

# pushed to docker as slintes/ace

MAINTAINER Marc Sluiter <marc.sluiter@luminis.eu>

# install ace
ADD http://ftp-stud.hs-esslingen.de/pub/Mirrors/ftp.apache.org/dist/ace/apache-ace-2.0.1/apache-ace-2.0.1-bin.zip /root/ace.zip
RUN unzip /root/ace.zip -d /root/
EXPOSE 8080

# default command, set time and start ace
CMD cd /root/apache-ace-2.0.1-bin/server-allinone && java -jar server-allinone.jar