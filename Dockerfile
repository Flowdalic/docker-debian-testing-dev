FROM debian:buster-backports

COPY config /

COPY 10-prepare-base /
RUN chmod 755 /10-prepare-base && /10-prepare-base

COPY 20-install-stable /
RUN chmod 755 /20-install-stable && /20-install-stable

COPY 25-llvm /
RUN chmod 755 /25-llvm && /25-llvm

COPY 30-install-backports /
RUN chmod 755 /30-install-backports && /30-install-backports

COPY 40-install-testing /
RUN chmod 755 /40-install-testing && /40-install-testing

COPY 60-pip-install /
RUN chmod 755 /60-pip-install && /60-pip-install

COPY 70-finish /
RUN chmod 755 /70-finish && /70-finish
