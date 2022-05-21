inoremap jj <esc>
noremap <space> :
let mapleader=";"
nmap <Leader>wq :wq<CR>
nmap <Leader>w :w<CR>
nmap <Leader>Q :q!<CR>
nmap <Leader>q :q<CR>
nmap <Leader>p "+p
vnoremap Y "+y
noremap J 5j
noremap K 5k

" Nvim Tree
nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>f :NvimTreeFindFile<CR>

" quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
