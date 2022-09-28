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
call plug#begin()
	" Use the EditorConfig plugin
	Plug 'editorconfig/editorconfig-vim'
	
	" Use the Smart Tabs plugin
	Plug 'Thyrum/vim-stabs'
call plug#end()
	
