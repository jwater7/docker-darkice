FROM ubuntu:artful
LABEL maintainer "j"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        darkice=1.3-0.1 \
    && apt-get autoclean \
    && apt-get autoremove \
    && rm -rf /var/lib/apt/lists/*

COPY darkice.cfg /etc/

ENTRYPOINT [ "darkice" ]

