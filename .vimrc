set nocompatible              " be iMproved, required
filetype off                  " required

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'VundleVim/Vundle.vim'
Plug 'lervag/vimtex'
Plug 'jiangmiao/auto-pairs'
Plug 'jlanzarotta/bufexplorer'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
call plug#end()

" Show NERDTree  when nothing is opened
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Save fold positions
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview
set encoding=utf-8
set laststatus=2
" Airline/status bar
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline_theme="base16_embers"
let g:notes_directories = ['~/cloud/Documents/USC/notes']
" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:ycm_server_python_interpreter = "/usr/bin/python3"

let g:vimtex_enabled = 1
let g:vimtex_compiler_method = "latexmk"
let g:tex_flavor = 'latex'
let maplocalleader = ","

set smartcase

map <C-n> :NERDTreeToggle<CR>
syntax on
filetype plugin indent on
source ~/.colemak.vim
