local set = vim.api.nvim_set_option
local map = vim.api.nvim_set_keymap

set("syntax", "enabled")
set("relativenumber", true)
set("number", true)
set("tabstop", 2)
set("shiftwidth", 2)
set("expandtab", true)				
set("termguicolors", true)				
set("cursorline", true)				
set("background", "dark")
set("updatetime", 100)

vim.g.colors_name="purple"

vim.g.go_fmt_command = "goimports"

map('n', '<leader>gj', ":diffget //3<CR>", { noremap = true, silent = true })
map('n', '<leader>gf', ":diffget //2<CR>", { noremap = true, silent = true })
map('n', '<leader>gs', ":G<CR>", { noremap = true, silent = true })
