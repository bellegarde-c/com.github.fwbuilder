FROM ubuntu:20.04
LABEL maintainer=h.wahl@ifw-dresden.de

ARG DEBIAN_FRONTEND=noninteractive
RUN apt -y update

RUN apt -y install \
           flatpak \
           flatpak-builder && \
    rm -rf /var/cache/apt/archives/*

RUN flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]