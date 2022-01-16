FROM debian:9

RUN apt-get update \
    && apt-get install -y \
    build-essential \
    libxml2-dev \
    libncurses5-dev \
    linux-headers* \
    libsqlite3-dev \
    libssl-dev \
    make cpp \
    && apt-get install -y asterisk

ADD . /etc/asterisk/

##On copie les fichiers de config d'asterisk
COPY sip.conf /etc/asterisk/
COPY users.conf /etc/asterisk/
COPY extensions.conf /etc/asterisk/


RUN service asterisk restart
