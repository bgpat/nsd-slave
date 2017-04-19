FROM alpine:3.5

RUN apk add --update --no-cache nsd openssl && \
	nsd-control-setup
ADD ./nsd.conf /etc/nsd/nsd.conf

EXPOSE 53 53/udp 8952
CMD ["nsd-control", "start"]
