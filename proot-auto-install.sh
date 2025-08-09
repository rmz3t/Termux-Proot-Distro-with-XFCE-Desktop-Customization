#!/system/bin/sh

INSTALL_DISTRO="$1"

if [ "$INSTALL_DISTRO" -eq "" ]; then
  echo "- Unknown distro"
  exit 1
fi

pkg update -y
pkg install proot-distro -y

if [ "$1" -eq "debian" ]; then
  proot-distro install debian
fi
