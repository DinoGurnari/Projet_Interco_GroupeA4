FROM ubuntu:bionic

RUN apt-get update \
  && apt-get install -y \
  apache2


#RUN ufw allow 'Apache'

#ADD . /var/www/html/
#ADD . /var/log/apache2/error.log
#ADD . /var/log/apache2/access.log

COPY index.html /var/www/html/
#COPY apache2.conf /etc/apache2/
#COPY ports.conf /etc/apache2/


#CMD systemctl start apache2.service
#CMD ["/bin/bash", "-c", "while :; do sleep 10; done"]