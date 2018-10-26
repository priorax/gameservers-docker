FROM base

RUN apt-get update
RUN apt-get install wget libcurl3 libcurl3-gnutls -y
ARG version=2.1.2
ENV VERSION=${version}

# Install game from warsow.net
RUN wget --no-verbose -O warsow.tar.gz http://sebastian.network/warsow/warsow-${VERSION}.tar.gz
RUN tar zxf warsow.tar.gz -C /opt/
RUN chmod +x /opt/warsow*/wsw_server*
ADD cfg /opt/wsw_cfg/

# Setup user
RUN useradd -m -s /bin/bash warsow
RUN chown -R warsow:warsow /opt/warsow*

RUN ls /opt

# Setup server
WORKDIR /opt/warsow-${VERSION}
USER warsow
EXPOSE 44401/udp
ADD start-warsow.sh .
CMD ["./start-warsow.sh"]
