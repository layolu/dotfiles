#!/bin/bash

# cf. https://unix.stackexchange.com/questions/28791/prompt-for-sudo-password-and-programmatically-elevate-privilege-in-bash-script
if [ $EUID != 0 ]; then
    sudo "$0" "$@"
    exit $?
fi

# TODO: change to replacing locale.gen file
if [ ! -f /etc/locale.gen.orig ]; then
	mv /etc/locale.gen /etc/locale.gen.orig
	cp locale.gen /etc
	chown root.root /etc/locale.gen
	chmod 644 /etc/locale.gen 
	locale-gen
       	update-locale LANG=ja_JP.UTF-8
fi
apt update
apt install -y vim git dnsutils python3 python3-pip python3-venv
pip3 install -r py3_requirements.txt
