FROM debian:testing-backports

COPY config /

COPY 10-prepare-base /
RUN chmod 755 /10-prepare-base && /10-prepare-base

COPY 20-install /
RUN chmod 755 /20-install && /20-install

COPY 50-llvm /
RUN chmod 755 /50-llvm && /50-llvm

COPY 60-pip-install /
RUN chmod 755 /60-pip-install && /60-pip-install

COPY 65-iwyu /
RUN chmod 755 /65-iwyu && /65-iwyu

COPY 66-mill /
RUN chmod 755 /66-mill && /66-mill

COPY 67-amm /
RUN chmod 755 /67-amm && /67-amm

COPY 68-instrumented-libc++ /
RUN chmod 755 /68-instrumented-libc++ && /68-instrumented-libc++

COPY 70-finish /
RUN chmod 755 /70-finish && /70-finish
