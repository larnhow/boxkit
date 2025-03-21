#!/bin/sh

# Symlink distrobox shims
# ./distrobox-shims.sh

# Update the container and install packages
sudo zypper --non-interactive dup
sudo zypper --non-interactive inr
echo 'LANG=de_DE.UTF-8' | sudo tee /etc/locale.conf
echo 'LC_CTYPE=de_DE.UTF-8' | sudo tee -a /etc/locale.conf
grep -v '^#' ./boxkit.packages | xargs sudo zypper --non-interactive in
