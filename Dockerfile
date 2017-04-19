FROM alpine:3.5

RUN apk add --update --no-cache nsd openssl drill && \
	nsd-control-setup
ADD ./nsd.conf.sh /etc/nsd/nsd.conf.sh
ADD ./docker-entrypoint.sh /docker-entrypoint.sh

EXPOSE 53 53/udp 8952
CMD ["/docker-entrypoint.sh"]
