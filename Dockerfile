FROM ubuntu:14.04
MAINTAINER Joe Brown <jbrown@weeby.co>

RUN apt-get update

# Install dependencies
RUN apt-get install -yq rrdtool perl libwww-perl libmailtools-perl libmime-lite-perl librrds-perl libdbi-perl libxml-simple-perl libhttp-server-simple-perl libconfig-general-perl libio-socket-ssl-perl

# Download the deb
RUN apt-get install -y wget
RUN wget http://www.monitorix.org/monitorix_3.6.0-izzy1_all.deb && \
    dpkg -i monitorix*.deb

# Add the launch script
ADD launch.sh /launch.sh
RUN chmod +x /launch.sh

ENTRYPOINT /launch.sh

