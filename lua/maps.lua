local map = vim.api.nvim_set_keymap

-- map the leader key
map('n', '<Space>', '', {})
vim.g.mapleader = ' '  -- 'vim.g' sets global variables

map('i', 'jk', '<ESC>', { noremap = true, silent = true })
map('n', '<leader>w', '<C-w>', { noremap = true, silent = true })

-- CtrlP
map('n', '<leader>p', ':CtrlP<CR>', { noremap = true, silent = true })
map('n', '<leader>f', ':CtrlPMRU<CR>', { noremap = true, silent = true })
