-- ALE
vim.g.ale_set_highlights = 0

-- bufferline
vim.opt.termguicolors = true
require("bufferline").setup{}

-- nvim-cmp
vim.o.completeopt = "menu,menuone,noselect"

-- nvim-tree config
require("nvim-tree").setup()
vim.api.nvim_set_keymap('n', '<leader>tt', ': NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tf', ': NvimTreeFocus<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tc', ': NvimTreeCollapse<CR>', { noremap = true, silent = true })
