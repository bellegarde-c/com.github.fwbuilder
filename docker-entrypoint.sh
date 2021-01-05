#!/bin/sh

flatpak install --assumeyes org.kde.Platform/x86_64/5.14 \
                            org.kde.Sdk/x86_64/5.14

cd /build

flatpak-builder --repo=fwbuilder_repo fwbuilder_build --force-clean com.github.fwbuilder.json