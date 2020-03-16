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
Plug 'andrewrk/zig.vim'
Plug 'cespare/vim-toml'
Plug 'peterhoeg/vim-qml'
Plug 'plasticboy/vim-markdown'

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'

Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
call plug#end()

let g:vim_markdown_fenced_languages = ['rust=rs']
let g:LanguageClient_serverCommands = {
   \ 'rust': ['rust-analyzer'],
   \ }
let g:LanguageClient_autostart = 1
let g:LanguageClient_usePopupHover = 1

autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect

colorscheme Tomorrow-Night

set shell=bash

function LC_maps()
  if has_key(g:LanguageClient_serverCommands, &filetype)
    nnoremap <buffer> <silent> K :call LanguageClient#textDocument_hover()<cr>
    nnoremap <buffer> <silent> gd :call LanguageClient#textDocument_definition()<CR>
    nnoremap <buffer> <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
  endif
endfunction

autocmd FileType * call LC_maps()
