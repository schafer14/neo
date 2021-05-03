local actions = require('telescope.actions')

require('telescope').setup{
  defaults = {
        vimgrep_arguments = {
          'rg',
          '--color=never',
          '--no-heading',
          '--with-filename',
          '--line-number',
          '--column',
          '--smart-case'
        },
        file_sorter = require('telescope.sorters').get_fzy_sorter,
        prompt_prefix = ' >',
        color_devicons = true,

        file_previewer   = require('telescope.previewers').vim_buffer_cat.new,
        grep_previewer   = require('telescope.previewers').vim_buffer_vimgrep.new,
        qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,

        mappings = {
            i = {
                ["<C-x>"] = false,
                ["<C-q>"] = actions.send_to_qflist,
                ["jj"] = actions.close,
                ["<C-v>"] = actions.file_vsplit,
            },
        }
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        }
    }
}

require('telescope').load_extension('fzy_native')

local M = {}
M.search_dotfiles = function() 
    require("telescope.builtin").find_files({
        prompt_title = "< VimRC >",
        cwd = "$HOME/.config/nvim/",
    })
end

M.search_config = function() 
    require("telescope.builtin").find_files({
        prompt_title = "< Config >",
        cwd = "$HOME/.config/",
    })
end

M.k8s_pods = function()
  --sample table initialization
  mytable = {}

  --simple table value assignment
  mytable[1]= "Lua"
  mytable[2]= "Go"
  mytable[3]= "Haskell"


  local Job = require'plenary.job'

  Job:new({
    command = 'kubectl',
    args = {"get", "pods", "--no-headers"},
    on_exit = function(j, return_val)
      print(return_val)
      print(j:result()[2])
    end,
  }):sync() -- or start()




  require("telescope.pickers").new(opts, {
    prompt_title = 'K8s Pods',
    finder = require("telescope.finders").new_table(mytable),
    sorter = require("telescope.sorters").fuzzy_with_index_bias(),
    attach_mappings = function(_, map)
      -- Map "<CR>" in insert mode to the function, actions.set_command_line
      map('i', '<CR>', actions.set_command_line)

      -- If the return value of `attach_mappings` is true, then the other
      -- default mappings are still applies.
      --
      -- Return false if you don't want any other mappings applied.
      --
      -- A return value _must_ be returned. It is an error to not return anything.
      return true
    end,
  }):find()
end


local map = vim.api.nvim_set_keymap

map('n', '<leader>tf', "<cmd>lua require('telescope.builtin').find_files()<cr>", { noremap = true, silent = true })
map('n', '<leader>tg', "<cmd>lua require('telescope.builtin').live_grep()<cr>", { noremap = true, silent = true })
map('n', '<leader>p', "<cmd>lua require('telescope.builtin').git_files()<cr>", { noremap = true, silent = true })
map('n', '<leader>vrc', "<cmd>lua require('telescope_config').search_dotfiles()<cr>", { noremap = true, silent = true })
map('n', '<leader>vconf', "<cmd>lua require('telescope_config').search_config()<cr>", { noremap = true, silent = true })
map('n', '<leader>ht', "<cmd>lua require('telescope.builtin').help_tags()<cr>", { noremap = true, silent = true })
map('n', '<leader>act', "<cmd>lua require('telescope.builtin').lsp_code_actions()<cr>", { noremap = true, silent = true })

return M
