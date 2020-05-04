FROM debian:buster-backports

COPY prepare /

RUN chmod 755 /prepare && /prepare
