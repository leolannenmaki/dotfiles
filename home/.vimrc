

" Setup Bundle Support {
	filetype off
	call pathogen#runtime_append_all_bundles()
	call pathogen#helptags()
" }


" Basics {
	set nocompatible " No vi compatility
	let mapleader="," " Mapleader
" }

" General {
	filetype plugin indent on " Automatically change file types.

	"set autochdir " Automatically always switch to the current files directory.
	set shortmess=filmnrxoOtT	   " abbrev. of messages (avoids 'hit enter')
	set history=1000 " Keep (a lot) more history

	" No needs for backups
	set noswapfile 
	set nobackup
	set encoding=utf-8

	" Use the same symbols as TextMate for tabstops and EOLs
	set list
	set listchars=tab:▸\ ,eol:¬

	" Soft/hard wrapping
	set wrap
	set textwidth=79
	set formatoptions=qrn1
	set colorcolumn=85

" }

" Plugins {
	" NerdTree {
		let NERDTreeChDirMode = 1
		let NERDTreeWinSize=30
		" guarantees that the NERDTrees for all tabs will be one and the same
		map <F2> :NERDTreeToggle \| :silent NERDTreeMirror<CR>
		"map <F2> :NERDTreeToggle<cr>
		let NERDTreeIgnore=['.vim$', '\~$', '.*\.pyc$', 'pip-log\.txt$']
	" }
	" SnipMate {
		" Author var
		let g:snips_author = '<a class="linkclass" href="mailto:"></a>>'
		" Shortcut for reloading snippets
		nnoremap <leader>smr <esc>:exec ReloadAllSnippets()<cr>
		" Quickly edit snippets
		nnoremap <leader>es <C-w>s<C-w>j<C-w>L:e ~/.vim/bundle/snipmate/snippets/<cr>

		" see .vim/bundle/snipmate/after/plugin/snipMate.vim for more info
		" and :help snipMate-remap
		ino <silent> <tab> <c-r>=TriggerSnippet()<cr>
		snor <silent> <tab> <esc>i<right><c-r>=TriggerSnippet()<cr>
		ino <silent> <s-tab> <c-r>=BackwardsSnippet()<cr>
		snor <silent> <s-tab> <esc>i<right><c-r>=BackwardsSnippet()<cr>
		ino <silent> <c-r><tab> <c-r>=ShowAvailableSnips()<cr>

	" }
	" Rainbows! {
		nmap <leader>R :RainbowParenthesesToggle<CR>
	" }
	" Scratch {
		nmap <leader><tab> :Sscratch<cr><C-W>x<C-j>:resize 15<cr>
	" }
	" Ack {
		map <leader>a :Ack 
	" }
	" Yankring {
		nnoremap <silent> <F3> :YRShow<cr>
		nnoremap <silent> <leader>y :YRShow<cr>
	" }
	" Exuberant ctags! {
		let Tlist_Ctags_Cmd = "/usr/local/bin/ctags"
		let Tlist_WinWidth = 50
		map <F4> :TlistToggle<cr>
		map <F5> :!/usr/local/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --exclude='@.ctagsignore' .<cr>
	" }
" }

" Vim UI {
	syntax on " Enable syntax highlightation.¨

	color delek " Default colorscheme
	set background=dark

	set t_Co=256 " Terminal colors

	set ruler " Enable cursor position
	set showcmd  " Show incomplete CMDS at the bottom
	  
	set showmatch " Show matching of: () [] {}

	set autoread " Auto read when file is changed

	set hidden " Hide buffers, rather than close them

	au FocusLost * :wa " Save when losing focus

	set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

	" GVim {
	if has('gui_running')
		set guifont=Menlo:h14
		"let g:molokai_original = 1
		colorscheme molokai
		set background=dark

		set go-=T
		set go-=l
		set go-=L
		set go-=r
		set go-=R

		" MVIM {
		if has("gui_macvim")
			macmenu &File.New\ Tab key=<nop>
			"map <leader>t <Plug>PeepOpen
		end
		" }

		highlight SpellBad term=underline gui=undercurl guisp=Orange
	endif
" }

" Searching {
	" This turns off Vim’s crazy default regex characters and makes searches use normal regexes.
	nnoremap / /\v
	vnoremap / /\v

	set ignorecase " Case insensitive search
	set smartcase " Case sensitive when uppercase is present
	set incsearch " Search as you type
	set hlsearch " Highlight search matches
	set gdefault " Applies substitutions globally on lines :%s/foo/bar/g
	" Clear highlights
	map <leader><space> :noh<cr>

	" Jump to matching () [] {}
	" Off because of snipMate
	" nmap <tab> %
	" vmap <tab> %
" }




" Security {
	" prevents some security exploits having to do with modelines in files.
	set modelines=0
" }

" Formatting {
	" Be smart, and awesome, about indentation
	set autoindent " Indent at the same level as previous line
	set smartindent
	set smarttab
	"set expandtab " Tabs are spaces

	"set sw=2
	"set sts=2
	set tabstop=4 " Tabs are 4 spaces
	set shiftwidth=4 " Even if there are tabs, preview as 4 spaces

	" Man pager
	"let $PAGER=''
" }

" Misc {
	set scrolloff=3
	set showmode
	set hidden
	set wildmenu
	set wildmode=list:longest
	set visualbell
	set cursorline
	set ttyfast
	set ruler " Enable cursor position
	set backspace=indent,eol,start
	set number
	set laststatus=2
" }

" Keybindings {
	" Use the damn hjkl keys
	" nnoremap <up> <nop>
	" nnoremap <down> <nop>
	" nnoremap <left> <nop>
	" nnoremap <right> <nop>

	" And make them fucking work, too.
	nnoremap j gj
	nnoremap k gk
	" Sidenote =% on a brace indents matching scope 

	" Easy buffer navigation
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l
	map <leader>w <C-w>v<C-w>l

	" Shift tabbing blocks of text (gv restores last visual block)
	" Off because of snipMate
	"vmap <Tab> >gv
	"vmap <S-Tab> <gv

	" Fuck you, help key.
	set fuoptions=maxvert,maxhorz
	inoremap <F1> <ESC>:set invfullscreen<CR>a
	nnoremap <F1> :set invfullscreen<CR>
	vnoremap <F1> :set invfullscreen<CR>

	" Sort CSS
	map <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>

	" Clean whitespace
	map <leader>W :%s/\s\+$//<cr>:let @/=''<CR>


	" Formatting, TextMate-style
	map <leader>q gqip

	nmap <leader>m :make<cr>

	" Google's JSLint
	au BufNewFile,BufRead *.js set makeprg=gjslint\ %
	au BufNewFile,BufRead *.js set errorformat=%-P-----\ FILE\ \ :\ \ %f\ -----,Line\ %l\\,\ E:%n:\ %m,%-Q,%-GFound\ %s,%-GSome\ %s,%-Gfixjsstyle%s,%-Gscript\ can\ %s,%-G

	" Easier linewise reselection
	map <leader>v V`]

	" HTML tag closing
	inoremap <C-_> <Space><BS><Esc>:call InsertCloseTag()<cr>a

	" Faster Esc
	" inoremap <Esc> <nop>
	inoremap jj <ESC>

	" Quickly edit/reload the vimrc file
	"nmap <silent> <leader>ev :e $MYVIMRC<CR>
	nnoremap <leader>ev <C-w>s<C-w>j<C-w>L:e $MYVIMRC<cr>
	nmap <silent> <leader>sv :so $MYVIMRC<CR>

	" Sudo to write
	cmap w!! w !sudo tee % >/dev/null

	" Shouldn't need shift
	nnoremap ; :

	" Stop it, hash key
	inoremap # X<BS>#
" }

