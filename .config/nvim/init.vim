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
set background=light
colorscheme PaperColor

highlight Normal guibg=NONE 
highlight NonText guibg=NONE 
highlight LineNr guibg=NONE

set number
set relativenumber
