set encoding=utf-8
execute pathogen#infect()
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline_theme="base16_solarized"
let g:notes_directories = ['~/cloud/pcc/notes']
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
syntax on
filetype plugin indent on
source ~/.colemak.vim
set laststatus=2
