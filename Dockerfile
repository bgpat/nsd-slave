FROM alpine:3.5

RUN apk add --update --no-cache nsd openssl && \
	nsd-control-setup

ADD ./nsd.conf /etc/nsd/nsd.conf

CMD ["nsd-control", "start"]
