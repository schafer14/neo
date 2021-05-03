local map = vim.api.nvim_set_keymap

map("n", "gd",  [[<Cmd>lua vim.lsp.buf.definition()<CR>]], { silent = true, noremap = true })
map("n", "gD",  [[<Cmd>lua vim.lsp.buf.declaration()<CR>]], { silent = true, noremap = true })
map("n", "gr",  [[<cmd>lua require('lspsaga.rename').rename()<CR>]], { silent = true, noremap = true })
map("n", "gi",  [[<Cmd>lua vim.lsp.buf.implementation()<CR>]], { silent = true, noremap = true })
map("n", "K",  [[<cmd>lua require('lspsaga.hover').render_hover_doc()<CR>]], { silent = true, noremap = true })
map("n", "ca",  [[<cmd>lua require('lspsaga.codeaction').code_action()<CR>]], { silent = true, noremap = true })
map("n", "<C-k>",  [[<Cmd>lua vim.lsp.buf.signature_help()<CR>]], { silent = true, noremap = true })
map("n", "<C-n>",  [[<Cmd>lua vim.lsp.diagnostic.goto_next()<CR>]], { silent = true, noremap = true })
map("n", "<C-p>",  [[<Cmd>lua vim.lsp.diagnostic.goto_prev()<CR>]], { silent = true, noremap = true })

-- autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
-- autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)
