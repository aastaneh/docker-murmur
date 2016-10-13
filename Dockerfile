# Version: 0.0.1
FROM ubuntu:14.04
MAINTAINER Amin Astaneh "amin@aminastaneh.net"

RUN apt-get update
RUN apt-get -y install mumble-server
RUN mkdir -p /data
RUN touch /data/mumble-server.sqlite
RUN chown -R mumble-server:mumble-server /data
COPY startup.sh /usr/local/bin/startup.sh
VOLUME /data
EXPOSE 64738
CMD ["/usr/local/bin/startup.sh"]
