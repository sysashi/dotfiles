-- Bootstrap packer
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Rerun PackerCompile everytime pluggins.lua is updated
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"

  -- Treesitter
  use({
    "nvim-treesitter/nvim-treesitter",
    config = function() require("plugins.treesitter") end,
    run = ":TSUpdate"
  })

  -- LSP server
  use({
    "neovim/nvim-lspconfig",
    config = function() require("plugins.lspconfig") end
  })

  -- Snippets, required for cmp
  use({
    "L3MON4D3/LuaSnip",
    config = function() require('luasnip.loaders.from_vscode').lazy_load() end
  })

  -- Autocomplete
  use({
    "hrsh7th/nvim-cmp",
    -- Sources for nvim-cmp
    requires = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-nvim-lua",
      "hrsh7th/cmp-cmdline",
      "saadparwaiz1/cmp_luasnip",
    },
    config = function() require("plugins.cmp") end,
  })

  -- Telescope
  use({
    "nvim-telescope/telescope.nvim",
    requires = {{"nvim-lua/plenary.nvim"}},
    config = function() require("plugins.telescope") end,
  })

  use({"nvim-telescope/telescope-fzf-native.nvim", run ="make"})

  -- Status Line
  use({
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true },
    config = function() require("plugins.lualine") end
  })

  -- Git integration
  use({
    'lewis6991/gitsigns.nvim',
    config = function() require("gitsigns").setup() end
  })

  -- Autoparis
  use({
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  })

  -- A Very Important Plugin
  use({
    "mhinz/vim-startify",
    config = function()
      local path = vim.fn.stdpath("config").."/lua/plugins/startify.vim"
      vim.cmd("source "..path)
    end
  })

  -- Theme(s)
  use "sainnhe/everforest"
  use "nyoom-engineering/oxocarbon.nvim"
  use "ray-x/aurora"
  -- use "nordtheme/vim"
  use {"embark-theme/vim", as = "embark"}
  use "gbprod/nord.nvim"
  use "kvrohit/mellow.nvim"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require("packer").sync()
  end
end)
