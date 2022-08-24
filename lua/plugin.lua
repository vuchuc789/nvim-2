local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim',
    install_path })
  vim.cmd [[packadd packer.nvim]]
end

require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Utils
  use 'nvim-lua/plenary.nvim'

  -- Language servers
  use 'neovim/nvim-lspconfig'
  use 'jose-elias-alvarez/null-ls.nvim'

  -- Completion
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'onsails/lspkind.nvim'

  -- Snippet
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'

  -- Colorschema
  -- use 'folke/tokyonight.nvim'
  use 'sainnhe/sonokai'

  -- Syntax
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  use 'nvim-treesitter/nvim-treesitter-textobjects'

  -- Icon
  use 'kyazdani42/nvim-web-devicons'

  -- File explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    -- tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  -- Status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Tab line
  use { 'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons' }

  -- Finder
  -- use {
  --   'nvim-telescope/telescope.nvim', tag = '0.1.0',
  --   -- or                            , branch = '0.1.x',
  --   requires = { { 'nvim-lua/plenary.nvim' } }
  -- }
  -- use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use { 'ibhagwan/fzf-lua',
    -- optional for icon support
    requires = { 'kyazdani42/nvim-web-devicons' }
  }

  -- List
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
  }

  -- Popup
  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
  })

  -- Git sign
  use {
    'lewis6991/gitsigns.nvim',
    -- tag = 'release' -- To use the latest release
  }

  -- Indent line
  use "lukas-reineke/indent-blankline.nvim"

  -- Surround
  use({
    "kylechui/nvim-surround",
  })

  -- Comment
  use {
    'numToStr/Comment.nvim',
  }

  -- Scroll bar
  -- use("petertriho/nvim-scrollbar")

  -- Auto pair
  use {
    "windwp/nvim-autopairs",
    config = function() end
  }

  -- Auto tag
  use 'windwp/nvim-ts-autotag'

  -- Rainbow
  use 'p00f/nvim-ts-rainbow'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
