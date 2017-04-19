#!/bin/sh
MASTER_ADDR=${MASTER_ADDR:-`dig +short $MASTER_HOST`}

cat <<EOF > /etc/nsd/nsd.conf
server:
	debug-mode: yes
	verbosity: ${VERBOSITY:-3}
	pidfile: "/var/run/nsd.pid"

remote-control:
	control-enable: yes
	control-interface: 0.0.0.0

pattern:
	name: "slave"
	zonefile: "%s.zone"
	allow-notify: $MASTER_ADDR ${AXFR_NOTIFY_KEY:-NOKEY}
	request-xfr: $MASTER_ADDR ${AXFR_REQUEST_KEY:-NOKEY}
EOF
