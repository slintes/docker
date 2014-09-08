FROM slintes/java8

MAINTAINER Marc Sluiter <marc.sluiter@luminis.eu>

# install ace (for target only)
ADD http://ftp-stud.hs-esslingen.de/pub/Mirrors/ftp.apache.org/dist/ace/apache-ace-2.0.1/apache-ace-2.0.1-bin.zip /root/ace.zip
RUN unzip /root/ace.zip -d /root/

# start ace target
CMD cd /root/apache-ace-2.0.1-bin/target && \
	java \
	    -Dagent.identification.agentid=docker-target-1 \
    	-Dagent.discovery.serverurls=http://ace:8080 \
    	-jar target.jar