#!/bin/bash
#####################
# Setup.sh
# Sets up development environment on osx, ubuntu, or arch
# complete with default packages and dotfiles
#####################

bashfile=~/.bashrc

if [ $1 == "o" ]
then
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew doctor
	brew update
	brew install bash vim npm git ssh python
	sudo echo "/usr/local/bin/bash" >> /etc/shells
	sudo chsh -s /usr/local/bin/bash
	sudo chsh -s /usr/local/bin/bash $(whoami)
	bashfile=~/.bash_profile
fi

if [ $1 == "u" ]
then
	sudo add-apt-repository ppa:fkrull/deadsnakes
	apt-get update
	apt-get upgrade
	apt-get install vim git ssh python2.7
fi

if [ $1 == "a" ]
then
fi

echo "export EDITOR=/usr/local/bin/vim" >> $bashfile
echo "export PS1=" >> $bashfile
echo "export PS2=" >> $bashfile
echo "set editing-mode vi" >> ~/.inputrc
ln -s ./vimrc ~/.vimrc
