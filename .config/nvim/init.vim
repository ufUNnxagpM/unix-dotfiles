let mapleader = "," " map leader to comma

" vim-plug
source ~/.config/nvim/plugins.vim

set expandtab
set tabstop=4
set shiftwidth=4
set number
set smartcase


" Set colorscheme, except for background to match terminal
colorscheme iceberg
highlight Normal ctermbg=none guibg=none
highlight SignColumn ctermbg=none guibg=none
highlight LineNr ctermbg=none guibg=none

" colemak key bindings
source ~/.config/nvim/colemak.vim
