" ==================== Auto load for first time use ====================
let g:iswindows = 0
let g:islinux = 0
if(has("win32") || has("win64") || has("win95") || has("win16"))
    let g:iswindows = 1
else
    let g:islinux = 1
endif

if empty(glob($HOME.'/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs
                            \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

let g:nvim_plugins_installation_completed=1
if empty(glob($HOME.'/.config/nvim/plugged/wildfire.vim/autoload/wildfire.vim'))
    let g:nvim_plugins_installation_completed=0
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Create a _machine_specific.vim file to adjust machine specific stuff, like python interpreter location
if g:islinux == 1
    let has_machine_specific_file = 1
    if empty(glob('~/.config/nvim/_machine_specific.vim'))
	let has_machine_specific_file = 0
	silent! exec "!cp ~/.config/nvim/default_configs/_machine_specific_default.vim ~/.config/nvim/_machine_specific.vim"
    endif
    source $HOME/.config/nvim/_machine_specific.vim
endif

" ==================== Source setting scripts ====================
source ~/.config/nvim/settings/general.vim
source ~/.config/nvim/settings/plugins.vim
source ~/.config/nvim/settings/mappings.vim
source ~/.config/nvim/settings/colors.vim
