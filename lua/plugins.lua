return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- packer

  use 'folke/tokyonight.nvim' -- tokyonight colorscheme
  use 'sainnhe/everforest' -- everforest colorscheme
  use 'morhetz/gruvbox' -- gruvbox colorscheme
  use "catppuccin/nvim" -- catppuccin colorscheme
  use 'savq/melange-nvim' -- melange colorscheme
  use 'rebelot/kanagawa.nvim' -- kanagawa colorscheme
  use 'christoomey/vim-tmux-navigator' -- navigating tmux
  use 'nvim-treesitter/nvim-treesitter' -- treesitter
  use 'nvim-treesitter/nvim-treesitter-context'
  use 'nvim-treesitter/nvim-treesitter-textobjects'
  use 'romgrk/barbar.nvim' -- tablines
  use 'lukas-reineke/indent-blankline.nvim'
  use 'nvim-lualine/lualine.nvim'
  --use 'ekickx/clipboard-image.nvim' -- Paste clipboard image in markdown
  use 'dfendr/clipboard-image.nvim'
  use 'bfrg/vim-cpp-modern' -- modern syntax highlighting for cpp
  use 'm4xshen/autoclose.nvim'
  use 'xiyaowong/transparent.nvim' -- transparency
  use 'windwp/nvim-autopairs'
  use 'kosayoda/nvim-lightbulb'
  use 'jghauser/follow-md-links.nvim' -- follow markdown links
  use 'davidgranstrom/nvim-markdown-preview'
  --use 'iamcco/markdown-preview.nvim'
  use 'windwp/nvim-ts-autotag' -- autoclose HTML tags
  use 'ray-x/web-tools.nvim'
  use 'mfussenegger/nvim-jdtls' -- jdtls
  use 'yamatsum/nvim-cursorline' -- cursor line
  use 'lambdalisue/suda.vim' -- sudo
  use 'SirVer/ultisnips' -- ultisnips
  use 'imbue-ai/jupyter_ascending' -- ipynb

  -- TODO: Remove these and all mentions in plugins
  -- use 'ms-jpq/coq_nvim' -- autocomplete
  -- use 'ms-jpq/coq.artifacts' -- COQ snippets

  -- TODO: configure this
   use {
         "hrsh7th/nvim-cmp",
         requires = {
             "hrsh7th/cmp-buffer", "hrsh7th/cmp-nvim-lsp",
             'quangnguyen30192/cmp-nvim-ultisnips', 'hrsh7th/cmp-nvim-lua',
             'octaltree/cmp-look', 'hrsh7th/cmp-path', 'hrsh7th/cmp-calc',
             'f3fora/cmp-spell', 'hrsh7th/cmp-emoji'
         }
     }

  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
  })

  require('nvim-ts-autotag').setup()

  use { -- LSPplugin
	  "williamboman/mason.nvim",
	  "williamboman/mason-lspconfig.nvim",
	  "neovim/nvim-lspconfig",
  }

  use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },
  --tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  use({
   "nvim-telescope/telescope.nvim",
   requires = {
     "nvim-lua/plenary.nvim",
	 "BurntSushi/ripgrep",
	 "sharkdp/fd",
   }
})
end)

