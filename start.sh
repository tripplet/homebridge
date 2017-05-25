#!/bin/sh

docker run -d \
  --net=host \
  --name homebridge \
  --restart=always \
  -v /storage/.docker/homebridge/config:/root/.homebridge \
  -v /var/run/dbus:/var/run/dbus \
  homebridge homebridge
