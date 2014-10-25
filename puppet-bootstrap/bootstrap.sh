#!/usr/bin/env bash
set -e

if [ "$EUID" -ne "0" ] ; then
        echo "Script must be run as root." >&2
        exit 1
fi

if which puppet > /dev/null ; then
        echo "Puppet is already installed"
        exit 0
fi

echo "Installing Puppet repo for Ubuntu 14.04 LTS"

apt-get update
apt-get install -y puppet

echo "Puppet installed!"
