#!/bin/zsh
#
# This wrapper is due to the hard restriction on `makepkg` that root cannot run it.
# The workaround they suggest is sudo-ing as `nobody` to build the package.  This
# is just meant to codify/wrap that process.
#
# USAGE: aur_install pacaur

AUR_PKG=$1

# Clone down into a central location
sudo -u nobody git clone https://aur.archlinux.org/$AUR_PKG.git /tmp/$AUR_PKG
cd /tmp/$AUR_PKG

sudo -u nobody makepkg
pacman -U *.pkg.tar.xz
