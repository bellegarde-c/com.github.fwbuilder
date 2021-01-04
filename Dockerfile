FROM ubuntu:20.04
LABEL maintainer=h.wahl@ifw-dresden.de

ARG DEBIAN_FRONTEND=noninteractive
RUN apt -y update

RUN apt -y install \
           flatpak \
           flatpak-builder

RUN flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
RUN flatpak install --assumeyes org.kde.Platform/x86_64/5.14 \
                                org.kde.Sdk/x86_64/5.14
