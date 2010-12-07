# My dotfiles

# Installing with [Homesick][homesick]:
	homesick clone leolannenmaki/dotfiles
	homesick symlink leolannenmaki/dotfiles

## To disable bash vi editing mode, comment out
	.inputrc
	set editing-mode vi

## Git with bash completion 
	sudo port install git-core +bash_completion +doc +svn


# Vim

## Plugins

### Installed using [pathogen.vim][pathogen.vim]
[nerdcommenter][nerdcommenter]
[nerdtree][nerdtree]
[snipmate][snipmate]
[fugitive.vim][fugitive.vim]
[Command-T][Command-T]
[ack.vim][ack.vim]
[vim-rainbow][vim-rainbow]
[vim-surround][vim-surround]
[repeat.vim][repeat.vim]

### Installed in .vim/plugin
[scratch][scratch]
[slime][slime]


### Initalize plugins
	cd ~/.homesick/repos/leolannenmaki/dotfiles
	git submodule init
	git submodule update

### Install command-t:
	cd home/.vim/bundle/command-t
	rake make

### Install Ack:
	Ubuntu:
	sudo apt-get install ack-grep
	let g:ackprg="ack-grep -H --nocolor --nogroup --column"
	
	MacPorts:
	sudo port install p5-app-ack

[homesick]: http://github.com/technicalpickles/homesick
[nerdcommenter]: https://github.com/scrooloose/nerdcommenter
[nerdtree]: https://github.com/scrooloose/nerdtree
[snipmate]: https://github.com/mkitt/snipmate.vim
[fugitive.vim]: https://github.com/tpope/vim-fugitive
[Command-T]: https://github.com/wincent/Command-T
[ack.vim]: https://github.com/mileszs/ack.vim
[vim-rainbow]: https://github.com/chrismetcalf/vim-rainbow
[vim-surround]: https://github.com/tpope/vim-surround
[pathogen.vim]: https://github.com/tpope/vim-pathogen
[repeat.vim]: https://github.com/tpope/vim-repeat
[scratch]: http://www.vim.org/scripts/script.php?script_id=664
[slime]: http://technotales.wordpress.com/2007/10/03/like-slime-for-vim/ 
