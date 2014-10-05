set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set nobackup
set nocompatible
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set wildmode=longest:list,full
syntax on
set hlsearch
set backspace=indent,eol,start
set mouse=a
command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
      \ | wincmd p | diffthis
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" Nerd tree
Plugin 'scrooloose/nerdtree.git'

" Nerd tree tabs
Plugin 'jistr/vim-nerdtree-tabs.git'

" Fugitive
Plugin 'tpope/vim-fugitive'

" PHP Documentor
Plugin 'tobyS/pdv'

" Vmustache
Plugin 'tobyS/vmustache'

call vundle#end()
filetype plugin indent on

" Plugin configuration
let mapleader = ","
map <Leader>n <plug>NERDTreeTabsToggle<CR>

let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <buffer> <C-p> :call pdv#DocumentWithSnip()<CR>
