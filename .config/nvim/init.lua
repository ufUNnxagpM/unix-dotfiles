vim.g.mapleader = ","

-- vim-plug
require('plugins')

vim.o.expandtab = true
vim.o.number = true
vim.o.smartcase = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.clipboard = "unnamedplus"

-- colemak key bindings
vim.cmd('source ~/.config/nvim/colemak.vim')
