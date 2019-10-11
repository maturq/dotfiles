" VIMRC

" Autoload vim-plug (Plugin manager) {{{
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" }}}

" Plugins {{{
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'arcticicestudio/nord-vim'

call plug#end()
"}}}

" Plugins config {{{
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|certs'
" }}}

" Colors {{{
colorscheme nord
" }}}

" Settings {{{
set foldmethod=marker
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshowmode
set hidden
set invlist
" }}}

" Remaping{{{

" Clear search highlighting
nnoremap <esc> :noh<return><esc>

" }}}

" Basics {{{
filetype plugin on
syntax enable
set relativenumber
language en_US.UTF-8
" }}}
