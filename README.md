# radius-mac
A simple RADIUS server for MAC-authentication.

## Docker
A docker image has been created based on alpine:3.18

[Example of config.ini](https://github.com/jcbshw/radius-mac/blob/master/config.ini)

```
docker run -d -p 1812:1812/udp -v ./config.ini:/etc/radius-mac/config.ini ghcr.io/jcbshw/radius-mac:latest
```
## Build

```
# standard build
make

# build for mipsel (eg. UniFi EdgeRouter X)
make mipsel
```

## Install
```
cp src/radius-mac /usr/bin

# add systemd service
cp config.ini /etc/radius-mac.ini
cp radius-mac.service /etc/system/systemd/
systemctl daemon-reload
systemctl start radius-mac.service

# enable at boot
systemctl enable radius-mac.service
```


## Dynamic VLAN using RADIUS MAC Authentication
See https://anton.lindstrom.io/radius-mac/

