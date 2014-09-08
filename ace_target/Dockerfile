FROM slintes/java8

# pushed to docker as slintes/ace_target

MAINTAINER Marc Sluiter <marc.sluiter@luminis.eu>

# install ace (for target only)
ADD http://ftp-stud.hs-esslingen.de/pub/Mirrors/ftp.apache.org/dist/ace/apache-ace-2.0.1/apache-ace-2.0.1-bin.zip /root/ace.zip
RUN unzip /root/ace.zip -d /root/

# start Apache ACE target
# ACE server must be linked to this container under the name "ace" (or somehow else be reachable under the hostname "ace") and must be running on port 8080
CMD cd /root/apache-ace-2.0.1-bin/target && \
	java \
	    -Dagent.identification.agentid=docker-target-1 \
    	-Dagent.discovery.serverurls=http://ace:8080 \
    	-jar target.jar