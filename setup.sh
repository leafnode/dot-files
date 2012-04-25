#!/bin/sh

ORG_DIR=`pwd`

for i in zshrc vimrc vim gvimrc screenrc tmux.conf
do
   rm -r -f $HOME/.$i
   ln -s $ORG_DIR/$i $HOME/.$i
done

touch $HOME/.zshrc_private

mkdir -p $HOME/.vim/colors
cp -aR $ORG_DIR/vim_colors/*.vim $HOME/.vim/colors/

mkdir -p $HOME/bin
for i in $ORG_DIR/bin/*
do
   f=`basename $i`
   ln -s $ORG_DIR/bin/$f $HOME/bin/$f
done
