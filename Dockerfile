FROM debian:testing-backports

COPY config /

COPY 10-prepare-base /
RUN chmod 755 /10-prepare-base && /10-prepare-base

COPY 20-install /
RUN chmod 755 /20-install && /20-install

COPY 50-llvm /
RUN chmod 755 /50-llvm && /50-llvm

COPY 65-iwyu /
RUN chmod 755 /65-iwyu && /65-iwyu

COPY 68-instrumented-libc++ /
RUN chmod 755 /68-instrumented-libc++ && /68-instrumented-libc++

COPY 70-opencilk /
RUN chmod 755 /70-opencilk && /70-opencilk

COPY 80-pip-install /
RUN chmod 755 /80-pip-install && /80-pip-install

COPY 86-mill /
RUN chmod 755 /86-mill && /86-mill

COPY 87-amm /
RUN chmod 755 /87-amm && /87-amm

COPY 89-gradle /
RUN chmod 755 /89-gradle && /89-gradle

COPY 90-finish /
RUN chmod 755 /90-finish && /90-finish
