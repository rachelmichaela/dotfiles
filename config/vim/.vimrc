" Disable Vi compatibility features
set nocompatible

" Enable filetype detection
filetype on
filetype plugin on

" Enable syntax detection
syntax on

" Show hybrid relative line numbers
set number relativenumber
set nu rnu

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

" Show whitespace characters, including spaces
set list
set lcs+=space:•

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

	" Use the Rainglow theme plugin
	Plug 'rainglow/vim'

	" Use the Dracula theme plugin
	Plug 'dracula/vim', {'as':'dracula'}

	" Use the NERDTree plugin
	Plug 'preservim/nerdtree'

	" Use the vim-airline plugin
	Plug 'vim-airline/vim-airline'

	" Use the vim-surround plugin
	Plug 'tpope/vim-surround'

	" Use the ALE plugin
	Plug 'dense-analysis/ale'
call plug#end()

if has('nvim')
	colorscheme crisp
else
	colorscheme dracula
endif

" Configure ALE
let g:ale_fix_on_enter = 0
let g:ale_fix_on_filetype_changed = 1
let g:ale_fix_on_insert_leave = 1
let g:ale_fix_on_save = 1
let g:ale_fix_on_text_changed = 1
let g:ale_lint_on_enter = 0
let g:ale_lint_on_filetype_changed = 1
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 1
let g:ale_linters_explicit = 1

let g:ale_fixers = {
			\'javascript': ['prettier', 'eslint'],
			\'css': ['prettier']
			\}
let g:ale_linters = {
			\'javascript': ['eslint'],
			\}
