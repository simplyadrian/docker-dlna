FROM debian:jessie-backports
MAINTAINER Adrian Herrera <simplyadrian@gmail.com>

RUN apt-get update &&\
    apt-get -t jessie-backports install -y --no-install-recommends minidlna &&\
    rm -rf /var/lib/apt/lists/*

ADD minidlna.conf /etc/minidlna.conf
 
ADD run.sh /run.sh
RUN chmod 755 /*.sh

VOLUME /media
CMD ["/run.sh"]
