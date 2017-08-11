#!/usr/bin/sh

#
# Downloads, extracts, installs, and cleans up packages from the AUR
#
# Authors:
# 	Yousef Amar <yousef@amar.io>
#


if [ $# -lt 1 ]; then
	echo "usage: $0 PACKAGE_NAME"
	exit
fi

cd /tmp
wget -qO- "https://aur.archlinux.org/cgit/aur.git/snapshot/$1.tar.gz" | tar xzf -
cd "$1"
makepkg -sfi
cd ..
rm -rf "$1"
