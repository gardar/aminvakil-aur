#!/bin/sh
set -euxo pipefail
pacman -Suy git --noconfirm
git clone https://aur.archlinux.org/phantomjs.git
chown -R devel: phantomjs
su devel sh -c "cd phantomjs && makepkg -sri --noconfirm"
