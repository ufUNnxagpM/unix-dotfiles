" Vim-Plug
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dense-analysis/ale'
Plug 'khaveesh/vim-fish-syntax'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'cocopon/iceberg.vim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'kyazdani42/nvim-web-devicons' " optional, for file icons
Plug 'kyazdani42/nvim-tree.lua'
call plug#end()

" ALE
let g:ale_set_highlights = 0

" Airline/status bar
let g:airline_powerline_fonts=1
let g:airline_theme="iceberg"

" coc config
source ~/.config/nvim/coc.vim

" nvim-tree config
luafile ~/.config/nvim/nvim-tree.lua
nnoremap <leader>tt : NvimTreeToggle<CR>
nnoremap <leader>tf : NvimTreeFocus<CR>
nnoremap <leader>tc : NvimTreeCollapse<CR>
