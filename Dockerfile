FROM haproxy:2.1.4-alpine

COPY start.sh /
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

EXPOSE 80 443

CMD [ "/start.sh" ]
