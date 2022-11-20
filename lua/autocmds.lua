--[[ autocmds.lua ]]


-- Packer
-- automatically run :PackerCompile whenever plugins.lua is updated 
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plug.lua source <afile> | PackerCompile
  augroup end
]])
