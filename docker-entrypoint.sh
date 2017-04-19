#!/bin/sh
set -eu

/etc/nsd/nsd.conf.sh
nsd-control start
