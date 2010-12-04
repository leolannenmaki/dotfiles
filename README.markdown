# My dotfiles

# Installing with [Homesick][homesick]:
	homesick clone leolannenmaki/dotfiles
	homesick symlink leolannenmaki/dotfiles

# Git with bash completion 
	sudo port install git-core +bash_completion +doc +svn


# Vim stuff

## Initalize plugins
	cd ~/.homesick/repos/leolannenmaki/dotfiles
	git submodule init
	git submodule update

## Install command-t:
	cd home/.vim/bundle/command-t
	rake make

## Install Ack:
	Ubuntu:
	sudo apt-get install ack-grep
	let g:ackprg="ack-grep -H --nocolor --nogroup --column"
	
	MacPorts:
	sudo port install p5-app-ack

[homesick]: http://github.com/technicalpickles/homesick
