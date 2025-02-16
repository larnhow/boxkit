#!/bin/sh

# Symlink distrobox shims
./distrobox-shims.sh

# Update the container and install packages
sudo zypper dup
grep -v '^#' ./boxkit.packages | xargs sudo zypper in