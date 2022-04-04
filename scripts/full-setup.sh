#!/bin/bash

set -x -e

export ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"

mkdir -p $HOME/var

# install oh-my-zsh
if [ ! -d $HOME/.oh-my-zsh ]
then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# fzf
sudo apt install fzf

# fzf-z
if [ ! -d $ZSH_CUSTOM/plugins/fzf-z ]
then
	mkdir -p ~/bin && wget -O ~/bin/fzfz https://raw.githubusercontent.com/andrewferrier/fzf-z/master/fzfz
	git clone https://github.com/andrewferrier/fzf-z.git $ZSH_CUSTOM/plugins/fzf-z
else
	pushd $ZSH_CUSTOM/plugins/fzf-z
	git pull
	popd
fi

# zsh-autosuggestion
if [ ! -d $ZSH_CUSTOM/plugins/zsh-autosuggestions ]
then
	git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
else
	pushd $ZSH_CUSTOM/plugins/zsh-autosuggestions
	git pull
	popd
fi

# zsh-syntax-highlighting
sudo apt install zsh-syntax-highlighting

# powerlevel10k
if [ ! -d $ZSH_CUSTOM/themes/powerlevel10k ]
then
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
else
	pushd $ZSH_CUSTOM/themes/powerlevel10k
	git pull
	popd
fi

# fasd
sudo add-apt-repository ppa:aacebedo/fasd
sudo apt install fasd

# fd-find
sudo apt install fd-find

# ack
sudo apt install ack

# bat
sudo apt install bat

# linuxbrew
if [ ! -d /home/linuxbrew ]
then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/leafnode/.zprofile
	eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

# httpie
sudo apt install python3-pip
sudo -s -E -H pip install httpie

# kube-ps1
brew install kube-ps1

# kubetail
sudo apt install kubetail
if [ ! -d $ZSH_CUSTOM/plugins/kubetail ]
then
	git clone https://github.com/johanhaleby/kubetail.git $ZSH_CUSTOM/plugins/kubetail
else
	pushd $ZSH_CUSTOM/plugins/kubetail
	git pull
	popd
fi

# lazy(git|docker)
brew install lazygit
brew install lazydocker

# jq
sudo apt install jq
