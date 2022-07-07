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

" ===
" === Vista
" ===
" How each level is indented and what to prepend.
" This could make the display more compact or more spacious.
" e.g., more compact: ["▸ ", ""]
" Note: this option only works for the kind renderer, not the tree renderer.
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]

" Executive used when opening vista sidebar without specifying it.
" See all the avaliable executives via `:echo g:vista#executives`.
let g:vista_default_executive = 'ctags'

" Set the executive for some filetypes explicitly. Use the explicit executive
" instead of the default one for these filetypes when using `:Vista` without
" specifying the executive.
let g:vista_executive_for = {
  \ 'cpp': 'coc',
  \ 'php': 'coc',
  \ }

" Declare the command including the executable and options used to generate ctags output
" for some certain filetypes.The file path will be appened to your custom command.
" For example:
let g:vista_ctags_cmd = {
      \ 'haskell': 'hasktags -x -o - -c',
      \ }

" To enable fzf's preview window set g:vista_fzf_preview.
" The elements of g:vista_fzf_preview will be passed as arguments to fzf#vim#with_preview()
" For example:
let g:vista_fzf_preview = ['right:50%']

" Ensure you have installed some decent font to show these pretty symbols, then you can enable icon for the kind.
let g:vista#renderer#enable_icon = 1

" The default icons can't be suitable for all the filetypes, you can extend it as you wish.
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }
