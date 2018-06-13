#!/bin/bash

# cf. https://unix.stackexchange.com/questions/28791/prompt-for-sudo-password-and-programmatically-elevate-privilege-in-bash-script
if [ $EUID != 0 ]; then
    sudo "$0" "$@"
    exit $?
fi

apt update
apt install vim python3 python3-pip python3-venv
pip3 install -r py3_requirements.txt
