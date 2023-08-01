-- [[ init.lua ]]

-- INFO meta-accessors
-- vim.g: 
-- 	maps to vim.api.nvim_set_var; sets global variables.
-- vim.o: 
-- 	maps to vim.api.nvim_win_set_var; sets variables scoped to a given window.
-- vim.b;
	-- maps to vim.api.nvim_buf_set_var; sets variables scoped to a given buffer.
-- vim.o: 
-- 	maps to vim.api.nvim_set_option; equivalent to :set.
-- vim.go: 
-- 	maps to vim.api.nvim_set_option; equivalent to :setglobal.
-- vim.bo: 
-- 	maps to vim.api.nvim_buf_set_option; equivalent to :setlocal for buffer options.
-- vim.wo: 
-- 	maps to vim.api.nvim_win_set_option; equivalent to :setlocal for window options.

local utils = require("utils")

-- IMPORTS
require('globals')          -- Globals
require('vars')             -- Variables
require('opts')             -- Options
require('plug')             -- Plugins
require('plug-set')         -- Plugin Settings
require('keys')             -- Keymaps
require('autocmds')         -- Autocommands


