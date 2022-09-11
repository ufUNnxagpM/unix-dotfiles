-- Colemak layout for Neovim
--
-- Colemak layout:                  |                 QWERTY layout:
-- `12345 67890-=     Move Around:  |  (instead of)   `12345 67890-=
--  qwfpg jlUy;[]\         u        |       k          qwert yuiop[]\
--  arstd hNEIo'         n   i      |     h   l        asdfg HJKL;'
--  zxcvb km,./            e        |       j          zxcvb nm,./
-- 
-- (nv  )     n =Left       ,     i =Right   ,    u =Up    ,     e =Down      
-- (nv  )    l =Left 1 word ,     y =Right 1 word
-- (nv  ) <C-l>=Left 1 WORD ,  <C-y>=Right 1 WORD
-- (nv  )    L =Home        ,     Y =End                   
-- (nv  )    j =PageUp      ,     h =PageDown              
-- (nv  )    - =First line  ,     _ =Last line,  <count>-=Goto line #
-- (nvic)       <Space>=Space
-- ( v  )     <S-Space>=Undo space
-- Legend:
-- S - Shift, C - Ctrl
-- (c - command line, i - insert mode, n - normal mode, v - visual+select mode)

-- Leader key
vim.g.mapleader = ","

-- Wrapper for vim.api.nvim_set_keymap that expands the first param for mapping multiple modes at once
local function nvim_multimode_set_keymap(modes,lhs,rhs,opts)
    for i=1, #modes do
        local mode = modes:sub(i,i)
        vim.api.nvim_set_keymap(mode,lhs,rhs,opts)
    end
end

-- Navigation
nvim_multimode_set_keymap("nxo", 'n', 'h', { noremap = true })
nvim_multimode_set_keymap("nxo", 'u', 'k', { noremap = true })
nvim_multimode_set_keymap("nxo", 'e', 'j', { noremap = true })
nvim_multimode_set_keymap("nxo", 'i', 'l', { noremap = true })
-- Home/end of line
nvim_multimode_set_keymap("nxo", 'L', '^', { noremap = true })
nvim_multimode_set_keymap("nxo", 'Y', '$', { noremap = true })
-- WORD left/right
nvim_multimode_set_keymap("nvo", '<C-l>', 'B', { noremap = true })
nvim_multimode_set_keymap("nvo", '<C-y>', 'W', { noremap = true })
-- Words forwards/backwards
nvim_multimode_set_keymap("nxo", 'l', 'b', { noremap = true })
nvim_multimode_set_keymap("nxo", 'y', 'w', { noremap = true })
-- Cut/copy/paste
vim.api.nvim_set_keymap('n', 'x', 'x', { noremap = true }); vim.api.nvim_set_keymap('x', 'x', 'd', { noremap = true })
nvim_multimode_set_keymap("nx", 'c', 'y', { noremap = true })
nvim_multimode_set_keymap("nx", 'v', 'gP', { noremap = true })
vim.api.nvim_set_keymap('n', 'X', 'dd', { noremap = true }); vim.api.nvim_set_keymap('x', 'X', 'd', { noremap = true })
vim.api.nvim_set_keymap('n', 'C', 'yy', { noremap = true }); vim.api.nvim_set_keymap('x', 'C', 'y', { noremap = true })
nvim_multimode_set_keymap("nx", 'V', 'p', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-c>', '"+Y', { noremap = true }) -- <C-c> with no selection copies current line to clipboard)
vim.api.nvim_set_keymap('n', '<C-x>', '"+dd', { noremap = true }) -- <C-x> with no selection cuts current line to clipboard 
-- Search
-- f unchanged
-- F unchanged
nvim_multimode_set_keymap("nxo", 'p', 't', { noremap = true })
nvim_multimode_set_keymap("nxo", 'P', 'T', { noremap = true })
nvim_multimode_set_keymap("nxo", 'b', ';', { noremap = true })
nvim_multimode_set_keymap("nxo", 'B', ',', { noremap = true })
nvim_multimode_set_keymap("nxo", 'k', 'n', { noremap = true })
nvim_multimode_set_keymap("nxo", 'K', 'N', { noremap = true })
-- Change
nvim_multimode_set_keymap("nx", 'w', 'c', { noremap = true })
nvim_multimode_set_keymap("nx", 'W', 'C', { noremap = true })
vim.api.nvim_set_keymap('n', 'ww', 'cc', { noremap = true })
-- inSert/Replace/append (T)
vim.api.nvim_set_keymap('n', 's', 'i', { noremap = true })
vim.api.nvim_set_keymap('n', 'S', 'I', { noremap = true })
vim.api.nvim_set_keymap('n', 't', 'a', { noremap = true })
vim.api.nvim_set_keymap('n', 'T', 'A', { noremap = true })
-- inneR text objects
-- e.g. dip (delete inner paragraph) is now drp
vim.api.nvim_set_keymap('o', 'r', 'i', { noremap = true })
-- Jump to line
nvim_multimode_set_keymap('nxo', '-', 'gg', { noremap = true })
nvim_multimode_set_keymap('nxo', '_', 'G', { noremap = true })
-- Map ; to :
nvim_multimode_set_keymap('nx', ';', ':', { noremap = true })
-- Folds, etc.
nvim_multimode_set_keymap('nx', 'ff', 'zf', { noremap = true })
nvim_multimode_set_keymap('nx', 'fo', 'zo', { noremap = true })
nvim_multimode_set_keymap('nx', 'fc', 'zc', { noremap = true })
-- Misc overridden keys must be prefixed with g
nvim_multimode_set_keymap('nx', 'gs', 's', { noremap = true })
nvim_multimode_set_keymap('nx', 'gX', 'X', { noremap = true })
nvim_multimode_set_keymap('nx', 'gU', 'U', { noremap = true })
nvim_multimode_set_keymap('nx', 'gQ', 'Q', { noremap = true })
nvim_multimode_set_keymap('nx', 'gK', 'K', { noremap = true })
-- extra alias
nvim_multimode_set_keymap('nx', 'gh', 'K', { noremap = true })
-- Enter, open line
vim.api.nvim_set_keymap('n', '<CR>', 'i<CR><Esc>', { noremap = true })
vim.api.nvim_set_keymap('i', '<S-CR>', '<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<S-CR>', 'O<Esc>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-CR>', 'o<Esc>', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-CR>', '<C-o>o', { noremap = true })
-- Cursor position jumplist
vim.api.nvim_set_keymap('n', '(', '<C-o>', { noremap = true })
vim.api.nvim_set_keymap('n', '(', '<C-i>', { noremap = true })
-- Window handling: <C-w> is now <C-r>
nvim_multimode_set_keymap('nx', '<C-r>', '<C-w>', { noremap = true })
-- <C-r><C-r> opens a new window
nvim_multimode_set_keymap('nx', '<C-r><C-r>', '<C-w>n', { noremap = true })
nvim_multimode_set_keymap('nx', '<C-r>n', '<C-w>h', { noremap = true })
nvim_multimode_set_keymap('nx', '<C-r>e', '<C-w>k', { noremap = true })
nvim_multimode_set_keymap('nx', '<C-r>u', '<C-w>j', { noremap = true })
nvim_multimode_set_keymap('nx', '<C-r>i', '<C-w>l', { noremap = true })
-- Macros (replay the macro recorded by qq)
vim.api.nvim_set_keymap('n', 'Q', '@q', { noremap = true })

-- Make Alt pop up the menu for all keys, mappings in use will be overridden subsequentially
local alphabet = "abcdefghijklmnopqrstuvwxyz"
for i = 1, #alphabet do
    local letter = alphabet:sub(i,i)
    vim.api.nvim_set_keymap('', string.format('<M-%s>', letter), string.format(':simalt %s<CR>', letter), { noremap = true, silent = true })
end

-- Switch tabs by number
for i = 1,9 do
    vim.api.nvim_set_keymap('', string.format('g%d', i), string.format('%dgt', i), { noremap = true })
end

vim.cmd([[
"" PageUp/PageDown
nnoremap <silent> <expr> j (winheight(0)-1) . "\<C-u>"
nnoremap <silent> <expr> h (winheight(0)-1) . "\<C-d>"
xnoremap <silent> <expr> j (winheight(0)-1) . "\<C-u>"
xnoremap <silent> <expr> h (winheight(0)-1) . "\<C-d>"
nnoremap <silent> <expr> <PageUp> (winheight(0)-1) . "\<C-u>"
nnoremap <silent> <expr> <PageDown> (winheight(0)-1) . "\<C-d>"
vnoremap <silent> <expr> <PageUp> (winheight(0)-1) . "\<C-u>"
vnoremap <silent> <expr> <PageDown> (winheight(0)-1) . "\<C-d>"
vnoremap <silent> <expr> <S-PageUp> (winheight(0)-1) . "\<C-u>"
vnoremap <silent> <expr> <S-PageDown> (winheight(0)-1) . "\<C-d>"

"" Half page up/down
nnoremap <silent> <expr> <C-u> (winheight(0)/2) . "\<C-u>"
nnoremap <silent> <expr> <C-e> (winheight(0)/2) . "\<C-d>"
vnoremap <silent> <expr> <C-u> (winheight(0)/2) . "\<C-u>"
vnoremap <silent> <expr> <C-e> (winheight(0)/2) . "\<C-d>"

"" Undo/redo
nnoremap z u|xnoremap z :<C-u>undo<CR>|
nnoremap gz U|xnoremap gz U<C-u>undo<CR>|
nnoremap Z <C-r>|xnoremap Z :<C-u>redo<CR>|

"" Navigate help file
"" Use < and > to navigate in the help file instead
au FileType help nnoremap <buffer> < <C-t>|
au FileType help nnoremap <buffer> > <C-]>|
au FileType help nnoremap <buffer> <CR> <C-]>|
au FileType help nnoremap <buffer> <Backspace> <C-t>|
au FileType help nnoremap <buffer> <silent> <expr> <Space> (winheight(0)-1) . "\<C-d>0"|
au FileType help nnoremap <buffer> <silent> <expr> <S-Space> (winheight(0)-1) . "\<C-u>0"|
nnoremap <silent> <F1> :tab help<CR>
"" opens commands in a new tab
cnoreabbr <expr> h    (getcmdtype() . getcmdline() != ':h'    ? 'h'    : 'tab help')
cnoreabbr <expr> he   (getcmdtype() . getcmdline() != ':he'   ? 'he'   : 'tab help')
cnoreabbr <expr> hel  (getcmdtype() . getcmdline() != ':hel'  ? 'hel'  : 'tab help')
cnoreabbr <expr> help (getcmdtype() . getcmdline() != ':help' ? 'help' : 'tab help')
cnoreabbr <expr> e    (getcmdtype() . getcmdline() != ':e'    ? 'e'    : 'tabedit' )
cnoreabbr <expr> ed   (getcmdtype() . getcmdline() != ':ed'   ? 'ed'   : 'tabedit' )
cnoreabbr <expr> edi  (getcmdtype() . getcmdline() != ':edi'  ? 'edi'  : 'tabedit' )
cnoreabbr <expr> edit (getcmdtype() . getcmdline() != ':edit' ? 'edit' : 'tabedit' )

"" Make insert/add work also in visual line mode like in visual block mode
xnoremap <silent> <expr> s (mode() =~# "[V]" ? "\<C-v>0o$I" : "I")
xnoremap <silent> <expr> S (mode() =~# "[V]" ? "\<C-v>0o$I" : "I")
xnoremap <silent> <expr> t (mode() =~# "[V]" ? "\<C-v>0o$A" : "A")
xnoremap <silent> <expr> T (mode() =~# "[V]" ? "\<C-v>0o$A" : "A")

"" Visual mode
nnoremap a v|xnoremap a v|
nnoremap A V|xnoremap A V|
nnoremap <C-a> <Esc>ggVG$|xnoremap <C-a> <Esc>ggVG$|vnoremap <C-a> <Esc>ggVG$|
nnoremap <C-b> <C-v>|
"" Allow switching from visual line to visual block mode
vnoremap <silent> <expr> <C-b> (mode() =~# "[vV]" ? "\<C-v>0o$" : "")

"" New/close/save
noremap <silent> <C-w> :<C-u>call CloseWindow()<CR>|inoremap <silent> <C-w> <C-o>:<C-u>call CloseWindow()<CR>|cnoremap <silent> <C-w> <C-c>:<C-u>call CloseWindow()<CR>|
noremap <silent> <C-t> :<C-u>tabnew<CR>|
""noremap <silent> <C-n> :<C-u>tabnew<CR>|
function! CloseWindow()
    if winheight(2) < 0 | confirm quit | else | confirm close | endif
endfunction
""nnoremap <silent> <C-s> :<C-u>update<CR>|inoremap <C-s> <C-o>:<C-u>update<CR>|

"" Restore mappings
"" Free mappings: ,/+/H/~

nnoremap <Space> i<Space><Esc><Right>|
xnoremap <silent> <Space> :<C-u>let b:tmp_var=&sw\|set sw=1\|normal! gv><CR>:<C-u>let &sw=b:tmp_var\|normal! gv<CR>
xnoremap <silent> <S-Space> :<C-u>let b:tmp_var=&sw\|set sw=1\|normal! gv<<CR>:<C-u>let &sw=b:tmp_var\|normal! gv<CR>

"" Delete/Backspace
nnoremap <C-d> "_dw|vnoremap <C-d> "_d|inoremap <C-d> <Delete>|cnoremap <C-d> <Delete>|
nnoremap <Delete> "_x|vnoremap <Delete> "_d|
nnoremap <Backspace> a<Left><Backspace><Right><Esc>|vnoremap <Backspace> "_d|
nnoremap <C-Backspace> a<Left><C-W><Right><Esc>|inoremap <C-Backspace> <C-w>|cnoremap <C-Backspace> <C-w>|
nnoremap <C-Delete> "_dw|inoremap <C-Delete> <C-o>"_dw|cnoremap <C-Delete> <Delete>|
nnoremap <S-Backspace> "_d^|inoremap <S-Backspace> <Backspace>|cnoremap <S-Backspace> <Backspace>|
nnoremap <S-Delete> "_d$|inoremap <S-Delete> <Delete>|cnoremap <S-Delete> <Delete>|
]])
