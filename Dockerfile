# Version: 0.0.1
FROM ubuntu:14.04
MAINTAINER Amin Astaneh "amin@aminastaneh.net"

RUN apt-get update
RUN apt-get -y install mumble-server
RUN mkdir -p /data
RUN touch /data/mumble-server.sqlite

RUN echo 'database=/data/mumble-server.sqlite\n\
welcometext="<br />Mumble Server"\n\
host=0.0.0.0\n\
port=64738\n\
bandwidth=72000\n\
users=100\n\
uname=mumble-server\n\
serverpassword=lolpassword\n\
bonjour=False\n'\
>> /data/murmur.ini

RUN chown -R mumble-server:mumble-server /data
VOLUME /data
EXPOSE 64738
CMD ["/usr/sbin/murmurd", "-ini", "/data/murmur.ini", "-fg"]
