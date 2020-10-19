#!/bin/sh
# https://qiita.com/okamos/items/7f5461814e8ed8916870
for f in .abcde.conf .bashrc .gitprofile .profile .vimrc
do
	[ -f ~/$f ] && cp -p ~/$f ~/$f.bak.$(date +%s)
	ln -sf $PWD/$f ~/$f
done

PS_DIR=~/.config/powerline-shell
[ ! -d $PS_DIR ] && mkdir -p ~/.config/powerline-shell
PS_CONFIG=$PS_DIR/config.json
[ -f $PS_CONFIG ] && cp -p $PS_CONFIG $PS_CONFIG.bak.$(date +%s)
ln -sf $PWD/config.json $PS_CONFIG

VIM_FTPLUGIN_DIR=~/.vim/ftplugin
[ ! -d $VIM_FTPLUGIN_DIR ] && mkdir -p $VIM_FTPLUGIN_DIR
PYTHON_VIM=$VIM_FTPLUGIN_DIR/python.vim
[ -f $PYTHON_VIM ] && cp -p $PYTHON_VIM $PYTHON_VIM.bak.$(date +%s)
ln -sf $PWD/python.vim $PYTHON_VIM
