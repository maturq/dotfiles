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
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
Plug 'drewtempelmeyer/palenight.vim'

call plug#end()
"}}}

" Plugins config {{{
" }}}

" Colors {{{
set background=dark
colorscheme palenight
" }}}

" Settings {{{
set foldmethod=marker
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
" }}}

" Basics {{{
filetype plugin on
syntax enable
set relativenumber
language en_US.UTF-8
" }}}

" Bad habits breaker {{{

" Don't use arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" }}}
