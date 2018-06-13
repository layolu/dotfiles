#!/bin/bash

# cf. https://unix.stackexchange.com/questions/28791/prompt-for-sudo-password-and-programmatically-elevate-privilege-in-bash-script
if [ $EUID != 0 ]; then
    sudo "$0" "$@"
    exit $?
fi

echo 'ja_JP.UTF-8 UTF-8' >> /etc/locale.gen
locale-gen
update-locale LANG=ja_JP.UTF-8

apt update
apt install -y vim python3 python3-pip python3-venv
pip3 install -r py3_requirements.txt
