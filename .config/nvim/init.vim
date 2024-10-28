call plug#begin()
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'NLKNguyen/papercolor-theme'
call plug#end()

lua << END
require('lualine').setup {
	options = { theme = 'papercolor_light' }
}
require('lualine').setup()
END

set termguicolors
syntax on				
set hlsearch
set incsearch
set number
set relativenumber
set noswapfile
let mapleader = ";"
nnoremap <esc> :noh<return><esc>

set background=light
colorscheme PaperColor

highlight Normal guibg=NONE 
highlight NonText guibg=NONE 
highlight LineNr guibg=NONE
