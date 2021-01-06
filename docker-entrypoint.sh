#!/bin/sh

# install needed frameworks at runetime because not possible to build dockerfile as privileged user
flatpak install --assumeyes org.kde.Platform/x86_64/5.14 \
                            org.kde.Sdk/x86_64/5.14

# mounted git repo clone
cd /build

# build with local repo folder to be later used for installation
flatpak-builder --repo=fwbuilder_repo fwbuilder_build --force-clean com.github.fwbuilder.yaml