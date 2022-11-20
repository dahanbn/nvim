--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- map takes in four parameters:
--   1. mode: 
--      the mode you want the key bind to apply to (e.g., insert mode, normal mode, command mode, visual mode).
--   2. sequence:
--      the sequence of keys to press.
--   3. command:
--      the command you want the keypresses to execute.
--   4. options:
--      an optional Lua table of options to configure (e.g., silent or noremap).

-- remap the key used to leave insert mode
map('i', 'jk', '', {})

-- Toggle nvim-tree
map('n', 'n', [[:NvimTreeToggle]], {})

-- Toggle more plugins
map('n', 'l', [[:IndentLinesToggle]], {})
map('n', 't', [[:TagbarToggle]], {})
map('n', 'ff', [[:Telescope find_files<CR>]], {})
map('n', 'fo', [[:Telescope oldfiles<CR>]], {})
map('n', 'fb', [[:Telescope buffers<CR>]], {})
map('n', 'fr', [[:Telescope mru<CR>]], {})
map('n', '<F5>', ':UndotreeToggle<CR>', {})

