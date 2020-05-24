#!/bin/sh

for DOMAIN in ${LETSENCRYPT_DOMAINS} ; do
  echo "Waiting for file to become available: /etc/letsencrypt/full/${DOMAIN}.pem"
  while [ ! -f /etc/letsencrypt/full/${DOMAIN}.pem ]; do sleep 1; done
  echo "File available: /etc/letsencrypt/full/${DOMAIN}.pem"
done

haproxy -f /usr/local/etc/haproxy/haproxy.cfg
