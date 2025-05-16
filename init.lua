require('liam')
local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug'nvim-lua/plenary.nvim'
Plug'nvim-telescope/telescope.nvim'
Plug'rose-pine/neovim'
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
Plug'nvim-treesitter/playground'
Plug'mbbill/undotree'
Plug'tpope/vim-fugitive'
Plug'neovim/nvim-lspconfig'
Plug'hrsh7th/nvim-cmp'
Plug'hrsh7th/cmp-buffer'
Plug'hrsh7th/cmp-path'
Plug'hrsh7th/cmp-nvim-lsp'
Plug'hrsh7th/cmp-nvim-lsp'
Plug'hrsh7th/cmp-nvim-lua'
Plug'saadparwaiz1/cmp_luasnip'
Plug'mason-org/mason.nvim'
Plug'mason-org/mason-lspconfig.nvim'
Plug'L3MON4D3/LuaSnip'
Plug'rafamadriz/friendly-snippets'
Plug'ThePrimeagen/vim-be-good'
Plug'nvim-lua/plenary.nvim'
Plug('ThePrimeagen/harpoon', { ['branch'] = 'harpoon2' })

vim.call('plug#end')
