call plug#begin()

" add lsp support
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

" add lsp completion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
"" add completion snippet engine
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

" add autopairs
Plug 'windwp/nvim-autopairs'

" add treesitter support syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" add a file browser and icons for said file browser
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

" add a diagnostics window
Plug 'folke/trouble.nvim'

" add a stylish statusline
Plug 'nvim-lualine/lualine.nvim'

" add plugin for commenting
Plug 'numToStr/Comment.nvim'

" add catppuccin theme
Plug 'catppuccin/nvim', {'as': 'catppuccin'}

" add lsp saga a nice ui for naitive lsp
Plug 'glepnir/lspsaga.nvim'

call plug#end()
