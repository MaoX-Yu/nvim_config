" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1

set nu
set relativenumber
set nocompatible
syntax on
set mouse+=a
set wrap
set showmatch
set showcmd
set wildmenu
set hlsearch
set incsearch
set ignorecase
set smartcase

inoremap jj <esc>
noremap <space> :
let mapleader=";"
nmap <Leader>wq :wq<CR>
nmap <Leader>w :w<CR>
nmap <Leader>Q :q!<CR>
nmap <Leader>q :q<CR>
nmap <Leader>p "+p
vnoremap Y "+y

"==================== Plugin Install ====================
call plug#begin('~/.config/nvim/plugged')

Plug 'liuchengxu/eleline.vim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'ajmwagar/vim-deus'

call plug#end()

"==================== Color Scheme ====================
set t_Co=256
set termguicolors

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set background=dark    " Setting dark mode
colorscheme deus
let g:deus_termcolors=256
