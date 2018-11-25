syntax on

set showcmd
set showmatch
set showmode
set mouse=a

set ruler
set number
set relativenumber

set expandtab
set tabstop=3
set shiftwidth=4

call plug#begin()
Plug 'bling/vim-airline'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdtree'
Plug 'andrewrk/zig.vim'
Plug 'cespare/vim-toml'
Plug 'peterhoeg/vim-qml'
Plug 'plasticboy/vim-markdown'
call plug#end()

let g:vim_markdown_fenced_languages = ['rust=rs']

colorscheme Tomorrow-Night

set shell=bash
