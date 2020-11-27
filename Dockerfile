FROM debian:testing-backports

COPY config /

COPY 10-prepare-base /
RUN chmod 755 /10-prepare-base && /10-prepare-base

COPY 20-install /
RUN chmod 755 /20-install && /20-install

COPY 60-pip-install /
RUN chmod 755 /60-pip-install && /60-pip-install

COPY 65-iwyu /
RUN chmod 755 /65-iwyu && /65-iwyu

COPY 70-finish /
RUN chmod 755 /70-finish && /70-finish
