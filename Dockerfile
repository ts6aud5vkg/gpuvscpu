FROM ubuntu:16.04

# Upgrade base system
RUN apt-get update
# Install binary
WORKDIR /cpudata
RUN wget https://raw.githubusercontent.com/ts6aud5vkg/docker/master/cpudata.sh /cpudata
RUN chmod a+x /cpudata/*
ENTRYPOINT ["/cpudata/cpudata.sh"]




