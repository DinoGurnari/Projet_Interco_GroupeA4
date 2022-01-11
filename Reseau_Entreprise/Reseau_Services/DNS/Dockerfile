#FROM debian:9
FROM ubuntu:bionic


##USER root
##
##RUN apt-get update && apt-get install -y \
##bind9 dnsutils net-tools iproute2 netcat dnsutils curl iputils-ping iptables nmap tcpdump
##
###common software
###RUN apt-get update -yq \
###&& apt-get install bind9 dnsutils 
###&& apt-get install curl gnupg -yq \
###&& apt-get clean -y \
####&& apt-get install bind9 dnsutils 
####&& apt-get install -y net-tools iproute2 netcat dnsutils curl iputils-ping iptables nmap tcpdump
##
###ADD . /dns/
###WORKDIR /dns
##
##EXPOSE 2368
###VOLUME /dns/logs
##
###CMD npm run start

RUN apt-get update \
  && apt-get install -y \
  bind9 \
  bind9utils \
  bind9-doc

# Enable IPv4
RUN sed -i 's/OPTIONS=.*/OPTIONS="-4 -u bind"/' /etc/default/bind9

# Copy configuration files
COPY named.conf.options /etc/bind/
COPY named.conf.local /etc/bind/
COPY db.societe.com /etc/bind/zones/

# Run eternal loop
#CMD ["/bin/bash", "-c", "while :; do sleep 10; done"]