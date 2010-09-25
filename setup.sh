#!/bin/sh

ORG_DIR=`pwd`

for i in zshrc vimrc vim gvimrc
do
	rm -r -f $HOME/.$i
	ln -s $ORG_DIR/$i $HOME/.$i
done

touch $HOME/.zshrc_private

mkdir -p $HOME/.vim/colors
cp -aR $ORG_DIR/vim_colors/*.vim $HOME/.vim/colors/
