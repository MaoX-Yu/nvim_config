call plug#begin('~/.config/nvim/plugged')

" stateline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" nvim tree
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

" colorscheme
Plug 'ajmwagar/vim-deus'

" welcome page
Plug 'goolord/alpha-nvim'

" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" win shift
Plug 'sindrets/winshift.nvim'

call plug#end()

"==================== Airline ====================
set laststatus=2    " 始终显示状态栏
let g:airline_theme='deus'

" tabline
let g:airline#extensions#tabline#enabled=1    " 开启 tab 栏
let g:airline#extensions#tabline#tab_nr_type=1    " tab number
let g:airline#extensions#tabline#show_tab_nr=1
let g:airline#extensions#tabline#formatter='default'
let g:airline#extensions#tabline#buffer_nr_show=0
let g:airline#extensions#tabline#fnametruncate=16
let g:airline#extensions#tabline#fnamecollapse=2
let g:airline#extensions#tabline#buffer_idx_mode=1

"==================== Nvim Tree ====================
lua require'nvim-tree'.setup {}

"==================== Alpha ====================
lua require'alpha'.setup(require'alpha.themes.startify'.config)

"==================== Coc Nvim ====================
let g:coc_global_extensions=[
    \'coc-marketplace',
    \'coc-vimlsp',
    \'coc-json',
    \]

" highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')
