FROM resin/rpi-raspbian:jessie 

MAINTAINER ttobias

RUN apt-get -y update && \
    apt-get -y install python2.7 build-essential avahi-discover libnss-mdns wget libavahi-compat-libdnssd-dev

RUN wget https://nodejs.org/dist/v6.10.1/node-v6.10.1-linux-armv7l.tar.gz && \
    tar -xvf node-v6.10.1-linux-armv7l.tar.gz && \
    cd node-v6.10.1-linux-armv7l && \
    cp -R * /usr/local/

RUN npm install -g --unsafe-perm homebridge && \
    npm install -g homebridge-hyperion-light && \
    mkdir /var/run/dbus/

