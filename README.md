Flatpak repository for Firewall Builder
==============================================

Create a Flatpak repository for Firewall Builder https://github.com/fwbuilder/fwbuilder. Usage of container is not necessary but provides clean flatpak-builder environment.

First clone repository:

`git clone https://github.com/HenriWahl/com.github.fwbuilder.git`

Change into cloned repository folder:

`cd com.github.fwbuilder`

Build container as clean flatpak-builder environment:

`docker build -t flatpak_builder .`

Run flatpak-builder inside privileged container - don't forget to replace volume source to you cloned git repo:

`docker run -it --rm -v $PWD/com.github.fwbuilder:/build --privileged flatpak_builder:latest`

Add freshly built local flatpak repository:

`flatpak remote-add --no-gpg-verify fwbuilder_repo fwbuilder_repo`

Install from flatpak repository:

`flatpak install fwbuilder_repo com.github.fwbuilder`

Run Firewall Builder:

`flatpak run com.github.fwbuilder`
