FROM alpine:3.18
MAINTAINER jcbshw

COPY src/ /tmp
RUN apk --no-cache --update add build-base && cd /tmp && \
   make && cp /tmp/radius-mac /usr/bin &&  mkdir -p /etc/radius-mac && \
   apk del build-base
CMD ["/usr/bin/radius-mac", "-c", "/etc/radius-mac/config.ini"]
