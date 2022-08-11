-- Vim-Plug
local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dense-analysis/ale'
Plug 'khaveesh/vim-fish-syntax'
Plug 'tpope/vim-fugitive'
Plug('neoclide/coc.nvim', {branch = 'release'})
Plug 'cocopon/iceberg.vim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'kyazdani42/nvim-web-devicons' -- optional, for file icons
Plug 'kyazdani42/nvim-tree.lua'
vim.call('plug#end')

-- ALE
vim.g.ale_set_highlights = 0

-- Airline/status bar
vim.g.airline_powerline_fonts = 1
vim.g.airline_theme = iceberg

-- coc config
vim.cmd('source ~/.config/nvim/coc.vim')
vim.g.ale_linters = {rust = {'rust-analyzer'}}

-- nvim-tree config
require("nvim-tree").setup()
vim.api.nvim_set_keymap('n', '<leader>tt', ': NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tf', ': NvimTreeFocus<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tc', ': NvimTreeCollapse<CR>', { noremap = true, silent = true })

-- Set colorscheme, except for background to match terminal
vim.cmd([[
colorscheme iceberg
highlight Normal ctermbg=none guibg=none
highlight SignColumn ctermbg=none guibg=none
highlight LineNr ctermbg=none guibg=none
]])
