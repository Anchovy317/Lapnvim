-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

   use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

 use({
    "folke/trouble.nvim",
    config = function ()
        require("trouble").setup {
        icons = false,
        }

    end


 })
  use({"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"})

  use {'nvim-lualine/lualine.nvim'}
  use("nvim-treesitter/playground")
  use("theprimeagen/harpoon")
  use("theprimeagen/refactoring.nvim")
  use("mbbill/undotree")
  use("tpope/vim-fugitive")
  use("nvim-treesitter/nvim-treesitter-context");

  use {'neoclide/coc.nvim', branch = 'release'}
  use {'airblade/vim-gitgutter'}

    use ("mfussenegger/nvim-dap")
    use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }
  use ("Mofiqul/dracula.nvim")
use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}
  use ("folke/tokyonight.nvim")
   use { "catppuccin/nvim", as = "catppuccin" }
      use {"akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
    end}
  use ('projekt0n/github-nvim-theme')
  use ('ayu-theme/ayu-vim' )
  use ("navarasu/onedark.nvim")
  use ("rose-pine/neovim")
  use("folke/zen-mode.nvim")
  use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.config)
    end
}
  use("github/copilot.vim")
  use("eandrju/cellular-automaton.nvim")
  use("github/copilot.vim")
  use("xiyaowong/transparent.nvim")
  use("laytan/cloak.nvim")
use 'ray-x/go.nvim'
use 'ray-x/guihua.lua' -- recommended if need floating window support
use 'neovim/nvim-lspconfig'
use 'nvim-treesitter/nvim-treesitter'
end)
