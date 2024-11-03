local Plug = vim.fn['plug#']

vim.call('plug#begin')
Plug('sainnhe/everforest')
Plug('nvim-lualine/lualine.nvim')
Plug('nvim-tree/nvim-web-devicons')
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
vim.call('plug#end')

-- Colourscheme Settings
vim.g.everforest_background = 'hard'
vim.o.background = 'dark'
vim.g.everforest_better_performance = 1
vim.g.everforest_transparent_background = 2
vim.g.everforest_ui_contrast = 'high'
vim.cmd([[colorscheme everforest]])


vim.o.termguicolors = true		-- Enable RGB Colours	
vim.o.number = true			-- Enable line numbers
vim.o.relativenumber = true		-- Enable relative line numbers
vim.o.swapfile = false			-- Disable swap file
vim.o.smartindent = true		-- Auto indent new lines
vim.o.cursorline = true			-- Highlight line
vim.o.wrap = false			-- Disable line wrap
vim.o.hlsearch = true			-- Highlight search results
vim.o.incsearch = true			-- Highlight incrementally

-- KEYBOARD REMAPS
-- Leader Key
vim.g.mapleader = ';'
-- Escape clears highlighting
vim.api.nvim_set_keymap('n', '<Esc>', ':noh<CR>', { noremap = true, silent = true})
-- Leader s sources the file
vim.api.nvim_set_keymap('n', '<leader>s', ':source<CR>', {noremap = true, silent = true})


-- Treesitter Settings
require('nvim-treesitter.configs').setup{
	highlight = { enable = true }
}

-- Lualine Settings
require('lualine').setup {
	options = { theme = 'everforest' }
}
