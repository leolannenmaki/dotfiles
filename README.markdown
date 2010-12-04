Dotfiles to use with homesick.


Using my dotfiles homesick: 
	homesick clone leolannenmaki/dotfiles
	cd ~/.homesick/repos/leolannenmaki/dotfiles
	git submodule init
	git submodule update
	homesick symlink leolannenmaki/dotfiles


If you want to use Ack with vim:

	Ubuntu:
	sudo apt-get install ack-grep
	let g:ackprg="ack-grep -H --nocolor --nogroup --column"
	
	Install with MacPorts:
	sudo port install p5-app-ack

