" Not Vi mode
set nocompatible

" Vundle
filetype plugin indent off
set rtp+=~/.vim/bundle/Vundle.vim " https://github.com/VundleVim/Vundle.vim
call vundle#begin()
    Plugin 'gmarik/Vundle.vim' " let Vundle manage Vundle

    " Color schemes:
    " Plugin 'https://github.com/altercation/vim-colors-solarized'
    " Plugin 'https://github.com/stulzer/heroku-colorscheme'
    " Plugin 'https://github.com/sickill/vim-monokai'

    " Autoclose plugins
    Plugin 'https://github.com/Raimondi/delimitMate.git'
    Plugin 'https://github.com/alvan/vim-closetag.git'

    " Nerdtree
    Plugin 'scrooloose/nerdtree'

    " Getting rid of arrows and hjkl habits
    Bundle 'takac/vim-hardtime'

    " Javascript and JSX plugins
    " Syntax Highlighting
    Plugin 'pangloss/vim-javascript'
    Plugin 'mxw/vim-jsx'
    Plugin 'leafgarland/typescript-vim'

    " Plugins for HTML edition
    Plugin 'mattn/emmet-vim'
call vundle#end() " End of Vundle


" Enable mouse and copy without line numbers
if has('mouse')
    set mouse=a
endif

" Where backups go
set backupdir=~/tmp,/tmp,.
" Where swap files go
set directory=~/tmp,/tmp,.

" Use system clipboard by default
set clipboard=unnamedplus

" Backspace working in the normal way
set backspace=indent,eol,start

" Show line numbers, use hybride mode (current line absolute, the rest
" relative)
set number "relativenumber

" Make vim working with cygwin on windows
if has("win32")
	set shell=C:/apps/cygwin/bin/bash
	set shellcmdflag=--login\ -c
	set shellxquote=\"
endif

" Autocompletion for command line
set wildmenu

"Incremental search
set incsearch

" Allows to enter invalid spaces
set virtualedit=all

" Auto indentation
set autoindent

" Size of commands and search history 
set history=200

" Display line and column number in bottom right corner 
set ruler

" Show partially inserted command
set showcmd

" Enable syntax coloring and highliting during search only if colors/gui are enabled
if &t_Co > 2 || has("gui_running")
	syntax on
	set hlsearch
endif

" Enable automatic indentation when file plugin detected which file type we have
filetype plugin on
filetype plugin indent on

" When in text mode don't allow for lines longer than 80 characters 
autocmd FileType text setlocal textwidth=80

" Checks if file has mark ` already, if so then go to it
autocmd BufReadPost *
	\ if line("'\"") > 1 && line("'\"") <= line("$") |
		\   exe "normal! g`\"" |
	\ endif

" Search with ignoring case, unless uppercase letter is in the pattern
set ignorecase
set smartcase

"" Tab behavior (via http://stackoverflow.com/questions/1878974/redefine-tab-as-4-spaces )
" Tabs changed into spaces
set expandtab

" Size of a hard tabstop. Intepret normal tab to be width (effectively the
" maximum) width of an actual tab character
set tabstop=8

" Size of soft tabstop. Setting it to non-zero value other than tabstop will
" make the tab key (in insert mode) insert a combination of spaces (and
" possibly tabs) to simulate tab stops at this with.
set softtabstop=0

" Size of an indent
set shiftwidth=4

" Make "tab" insert indents instead of tabs at the beginning of a line
set smarttab

" Round indent to nearest shiftwidth multiple (via https://wiki.haskell.org/Vim) 
" set shiftround

" Use 2 spaces in javascript and html
" autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
" autocmd Filetype html setlocal ts=2 sts=2 sw=2

" Colorscheme. Use solarized by default. Can be selected based on running gui
if has('gui_running')
    set background=light
else
    set background=dark
endif
" colorscheme solarized

" Enable hardtime plugin on start - stop repeating arrows and hjkl - can
" press them only once in two seconds
let g:hardtime_default_on = 1
let g:hardtime_timeout = 2000
let g:hardtime_showmsg = 1

" Do not use hardtime in NERDTree
let g:hardtime_ignore_buffer_patterns = [ "NERD.*" ]

" Emmet configuration
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" Use JSX extension for .js files also
let g:jsx_ext_required = 0
