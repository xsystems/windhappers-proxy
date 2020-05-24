#!/bin/sh

for DOMAIN in ${LETSENCRYPT_DOMAINS} ; do
  while [ ! -f /etc/letsencrypt/live/${DOMAIN}/full.pem ]; do sleep 1; done
done

haproxy -f /usr/local/etc/haproxy/haproxy.cfg
