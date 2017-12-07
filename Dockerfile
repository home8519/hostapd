FROM alpine:3.5
LABEL maintainer ""

ENV HOSTAPD_VERSION=2.6-r0

RUN apk add --update hostapd=${HOSTAPD_VERSION}  && \
	rm -rf /var/cache/apk/*

RUN mkdir -p /srv/hostapd

ENTRYPOINT ["/usr/sbin/hostapd", "/config/etc/hostapd.conf"]
