P = function(v)
  print(vim.inspect(v))
  return v
end

R = function(p)
  package.loaded[p] = nil
  return require(p)
end


local M = {}


function M.ripGrep() 
  print "you called rg!!! I did it, I think I understand more"
  P(M)
end


vim.cmd [[nnoremap <leader>rg :lua R("rg").ripGrep()<CR>]]



return M
