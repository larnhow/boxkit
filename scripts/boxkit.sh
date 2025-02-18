#!/bin/sh

# Symlink distrobox shims
# ./distrobox-shims.sh

# Update the container and install packages
sudo zypper --non-interactive dup
grep -v '^#' ./boxkit.packages | xargs sudo zypper --non-interactive in
