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

" markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'mzlogin/vim-markdown-toc'

" ==================== Snippets ====================

" snippets
Plug 'honza/vim-snippets'

" unity
Plug 'kleber-swf/vscode-unity-code-snippets'

" ==================== Tools ====================

" treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

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

" file navigation
" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ibhagwan/fzf-lua', {'branch': 'main'}
" ranger
Plug 'kevinhwang91/rnvimr'
" changes the working directory to the project root
Plug 'airblade/vim-rooter'
" Vim code inspection plugin for finding definitions and references/usages
Plug 'pechorin/any-jump.vim'

" sudo write
Plug 'lambdalisue/suda.vim'

" git
"Plug 'airblade/vim-gitgutter'
Plug 'lewis6991/gitsigns.nvim'
Plug 'sindrets/diffview.nvim'
Plug 'kdheepak/lazygit.nvim'

" in Visual mode, type i' to select all text in '', or type i) i] i} ip
Plug 'gcmt/wildfire.vim'

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
require('bufferline').setup {
    options = {
        --separator_style = "padded_slant",
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                highlight = "Directory",
                text_align = "center"
            },
            {
                filetype = "vista",
                text = "Outline",
                highlight = "Directory",
                text_align = "center"
            }
        }
    }
}
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
" === Coc
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
