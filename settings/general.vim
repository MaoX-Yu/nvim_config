set nu
set relativenumber
set nocompatible
syntax on
set mouse+=a

set wrap
set colorcolumn=80

set showmatch
set showcmd
set noshowmode
set wildmenu
set cmdheight=2
set showtabline=2

set hlsearch
set incsearch
set ignorecase
set smartcase
set smartindent

set expandtab
set softtabstop=4
set shiftwidth=4

set hidden
set updatetime=100
set shortmess+=c

set scrolloff=8
set sidescrolloff=8

set cursorline
set signcolumn=yes

set autoread

set nobackup
set nowritebackup
set noswapfile

set timeoutlen=500

set list
set listchars+=space:·

set pumheight=10

set t_Co=256
set termguicolors

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

let g:completeopt = "menu,menuone,noselect,noinsert"
