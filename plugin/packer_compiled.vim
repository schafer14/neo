" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/home/banner/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/banner/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/banner/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/banner/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/banner/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["completion-treesitter"] = {
    loaded = true,
    path = "/home/banner/.local/share/nvim/site/pack/packer/start/completion-treesitter"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/banner/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/home/banner/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  ["lush.nvim"] = {
    loaded = true,
    path = "/home/banner/.local/share/nvim/site/pack/packer/start/lush.nvim"
  },
  neogit = {
    loaded = true,
    path = "/home/banner/.local/share/nvim/site/pack/packer/start/neogit"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/banner/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/banner/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/banner/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/banner/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/banner/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/banner/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["statusline.vim"] = {
    loaded = true,
    path = "/home/banner/.local/share/nvim/site/pack/packer/start/statusline.vim"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = true,
    path = "/home/banner/.local/share/nvim/site/pack/packer/start/telescope-fzy-native.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/banner/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/banner/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-go"] = {
    loaded = true,
    path = "/home/banner/.local/share/nvim/site/pack/packer/start/vim-go"
  },
  ["vim-jsonnet"] = {
    loaded = true,
    path = "/home/banner/.local/share/nvim/site/pack/packer/start/vim-jsonnet"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/home/banner/.local/share/nvim/site/pack/packer/start/vim-startify"
  }
}

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
