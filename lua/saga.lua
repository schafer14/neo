local saga = require 'lspsaga'
local map = vim.api.nvim_set_keymap

saga.init_lsp_saga {
}

map('n', 'gh', ':Lspsaga lsp_finder<CR>', { silent = true, noremap = true })
map('n', '<leader>K', ':Lspsaga hover_doc<CR>', { silent = true, noremap = true })
