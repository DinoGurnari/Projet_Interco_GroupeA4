FROM ubuntu:bionic

RUN apt-get update \
  && apt-get install -y \
  apache2

#RUN ufw allow 'Apache'

COPY index.html /var/www/html/

#CMD systemctl start apache2.service
