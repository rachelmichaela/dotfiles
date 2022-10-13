" Disable Vi compatibility features
set nocompatible

" Enable filetype detection
filetype on
filetype plugin on

" Enable syntax detection
syntax on

" Show line numbers
set number

" Use 4 character wide indentation
set shiftwidth=4
set tabstop=4

" Use incremental searching
set incsearch
set showmatch
set hlsearch

" Store more commands in history
set history=100

" Add a vertical rule at 80 characters
set colorcolumn=80

" Use vim-plug package manager
let data_dir = '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  	let url = 'https://raw.githubusercontent.com/' 
				\ .'junegunn/vim-plug/master/plug.vim'
	silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs '
				\ .url
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif
call plug#begin()
	" Use the EditorConfig plugin
	Plug 'editorconfig/editorconfig-vim'
	
	" Use the Smart Tabs plugin
	Plug 'Thyrum/vim-stabs'
call plug#end()
	
