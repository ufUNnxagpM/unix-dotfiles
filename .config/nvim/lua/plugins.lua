-- Vim-Plug
local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dense-analysis/ale'
Plug 'khaveesh/vim-fish-syntax'
Plug 'tpope/vim-fugitive'
Plug 'cocopon/iceberg.vim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'kyazdani42/nvim-web-devicons' -- optional, for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'neovim/nvim-lspconfig'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

Plug 'simrat39/rust-tools.nvim'
Plug('mtoohey31/cmp-fish', {ft = "fish"})
vim.call('plug#end')

-- ALE
vim.g.ale_set_highlights = 0

-- Airline/status bar
vim.g.airline_powerline_fonts = 1
vim.g.airline_theme = "iceberg"

-- nvim-cmp
vim.o.completeopt = "menu,menuone,noselect"
require('nvim-cmp')

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
