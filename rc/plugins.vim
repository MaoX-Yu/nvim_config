call plug#begin('~/.config/nvim/plugged')

" stateline
Plug 'nvim-lualine/lualine.nvim'

" bufferline
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }

" nvim tree
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

" colorscheme
"Plug 'ajmwagar/vim-deus'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}

" welcome page
Plug 'goolord/alpha-nvim'

" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" win shift
Plug 'sindrets/winshift.nvim'

" ranger
Plug 'kevinhwang91/rnvimr'

" snippets
Plug 'honza/vim-snippets'

" unity
Plug 'kleber-swf/vscode-unity-code-snippets'

" sudo write
Plug 'lambdalisue/suda.vim'

" CSharp
Plug 'OmniSharp/omnisharp-vim'
Plug 'ctrlpvim/ctrlp.vim' , { 'for': ['cs', 'vim-plug'] }

" git
"Plug 'airblade/vim-gitgutter'
Plug 'lewis6991/gitsigns.nvim'
Plug 'nvim-lua/plenary.nvim'    " diffview dep
Plug 'sindrets/diffview.nvim'
Plug 'kdheepak/lazygit.nvim'

call plug#end()

" ===
" === Lualine
" ===
lua << EOF
require('lualine').setup {
    options = {
        theme = "catppuccin"
    }
}
EOF

" ===
" === Bufferline
" ===
lua << EOF
require('bufferline').setup {}
EOF

" ===
" === Nvim Tree
" ===
lua << EOF
require('nvim-tree').setup {}
EOF

" ===
" === Alpha
" ===
lua << EOF
require('alpha').setup (require'alpha.themes.startify'.config)
EOF

" ===
" === CoC
" ===
let g:coc_global_extensions=[
    \'coc-marketplace',
    \'coc-vimlsp',
    \'coc-json',
    \'coc-pairs',
    \'coc-prettier',
    \'coc-snippets',
    \'coc-omnisharp',
    \]

" highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" ===
" === Gitsigns
" ===
lua << EOF
require('gitsigns').setup {}
EOF
