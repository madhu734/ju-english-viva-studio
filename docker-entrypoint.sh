#!/bin/sh
set -eu
HOST_IP="${HOST_IP:-$(ip -4 route show default | awk 'NR==1 {print $3}')}"
test -n "$HOST_IP" || { echo 'Docker host gateway not found' >&2; exit 1; }
export HOST_IP
envsubst '${HOST_IP}' < /etc/nginx/viva.conf.template > /etc/nginx/conf.d/default.conf
nginx -t
