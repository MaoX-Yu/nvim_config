call plug#begin('~/.config/nvim/plugged')

" ==================== Dependence ====================

" diffview dep
Plug 'nvim-lua/plenary.nvim'

" icon
Plug 'kyazdani42/nvim-web-devicons'

" ==================== Beauty ====================

" colorscheme
"Plug 'ajmwagar/vim-deus'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}

" stateline
Plug 'nvim-lualine/lualine.nvim'

" bufferline
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }

" rainbow brackets
Plug 'luochen1990/rainbow'

" ==================== Code supports ====================

" CSharp
Plug 'OmniSharp/omnisharp-vim'
Plug 'ctrlpvim/ctrlp.vim' , { 'for': ['cs', 'vim-plug'] }

" ==================== Snippets ====================

" snippets
Plug 'honza/vim-snippets'

" unity
Plug 'kleber-swf/vscode-unity-code-snippets'

" ==================== Tools ====================

" nvim tree
Plug 'kyazdani42/nvim-tree.lua'

" welcome page
Plug 'goolord/alpha-nvim'

" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" View and search LSP symbols, tags
Plug 'liuchengxu/vista.vim'

" win shift
Plug 'sindrets/winshift.nvim'

" ranger
Plug 'kevinhwang91/rnvimr'

" sudo write
Plug 'lambdalisue/suda.vim'

" git
"Plug 'airblade/vim-gitgutter'
Plug 'lewis6991/gitsigns.nvim'
Plug 'sindrets/diffview.nvim'
Plug 'kdheepak/lazygit.nvim'

" in Visual mode, type i' to select all text in '', or type i) i] i} ip
Plug 'gcmt/wildfire.vim'

" markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'mzlogin/vim-markdown-toc'

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

" ===
" === Rainbow
" ===
let g:rainbow_active = 1
