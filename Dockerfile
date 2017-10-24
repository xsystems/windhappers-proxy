FROM xsystems/haproxy-letsencrypt:2.3.1
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

EXPOSE 80 443
