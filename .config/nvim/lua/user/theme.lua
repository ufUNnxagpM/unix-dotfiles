-- Set colorscheme, except for background to match terminal
vim.cmd([[
colorscheme iceberg
highlight Normal ctermbg=none guibg=none
highlight SignColumn ctermbg=none guibg=none
highlight LineNr ctermbg=none guibg=none
]])

-- Airline status bar theme
vim.g.airline_theme = "iceberg"
