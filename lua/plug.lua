-- [[ plugins.lua ]]

return require('packer').startup(function(use)

  -- installed packages are under:
  --    ~/.local/share/nvim/site/pack/
  --    PackerCompile is realized as autocommand in autocmds.lua
  --    to install packages call :PackerInstall

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {                                              -- filesystem navigation
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'        -- filesystem icons
  }

    -- [[ Theme ]]
  use { 'mhinz/vim-startify' }                       -- start screen
  use { 'DanilaMihailov/beacon.nvim' }               -- cursor jump
  use {
    'nvim-lualine/lualine.nvim',                     -- statusline
    requires = {'kyazdani42/nvim-web-devicons',
                opt = true}
  }
  use { 'Mofiqul/dracula.nvim' }                     -- colorscheme

  -- [[ Dev ]]
  use {
    'nvim-telescope/telescope.nvim',                 -- fuzzy finder
    requires = { {'nvim-lua/plenary.nvim', 
                  'alan-w-255/telescope-mru.nvim',
                  'yegappan/mru'} }
  }
  use { 'majutsushi/tagbar' }                        -- code structure
  use { 'Yggdroot/indentLine' }                      -- see indentation
  use { 'tpope/vim-fugitive' }                       -- git integration
  use { 'tpope/vim-commentary' }                     -- commentary
  use { 'tpope/vim-surround' }                       -- surround
  use { 'junegunn/gv.vim' }                          -- commit history
  use { 'windwp/nvim-autopairs' }

  use { 'mbbill/undotree'}                           -- undo manager

  use {                                              -- treesitter for LSP
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
  use { 'JoosepAlviste/nvim-ts-context-commentstring'}

  use { 'williamboman/mason.nvim' }
  use { 'williamboman/mason-lspconfig.nvim' }
  use { 'neovim/nvim-lspconfig' }

  use { 'gelguy/wilder.nvim' }                        -- 

--  use { 'numToStr/Comment.nvim' }

  use { "folke/which-key.nvim" }

end)

