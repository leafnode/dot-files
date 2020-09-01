#!/bin/bash

ORG_DIR=`pwd`

for i in zshrc vimrc vim gvimrc screenrc tmux.conf gitconfig irssi ansible.cfg p10k.zsh
do
   if [ -f $HOME/.$i ]
   then
      echo "File .$i already exists, making backup copy"
      mv $HOME/.$i $HOME/.$i.bak-`date +"%Y%m%d%H%M%S"`
   fi
   ln -s $ORG_DIR/$i $HOME/.$i
done

touch $HOME/.zshrc_private

mkdir -p $HOME/bin
for i in $ORG_DIR/bin/*
do
   f=`basename $i`
   if [ ! -f $HOME/bin/$f ]
   then
      ln -s $ORG_DIR/bin/$f $HOME/bin/$f
   fi
done

mkdir -p ~/tmp/backup
mkdir -p ~/tmp/screen
chmod 0700 ~/tmp/screen

which ctags > /dev/null

if [ $? -ne 0 ]
then
   echo "NO CTAGS INSTALLED"
fi

