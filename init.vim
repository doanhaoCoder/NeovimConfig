call plug#begin(stdpath('config').'/plugged')

Plug 'olimorris/onedarkpro.nvim'

Plug 'nvim-neo-tree/neo-tree.nvim', { 'branch': 'v3.x' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'MunifTanjim/nui.nvim'

Plug 'akinsho/bufferline.nvim', { 'tag': '*' }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'

Plug 'junegunn/fzf', 
    \ { 'do': { -> fzf#install() } } 
Plug 'junegunn/fzf.vim'

Plug 'lewis6991/gitsigns.nvim'

Plug 'folke/ts-comments.nvim'
Plug 'echasnovski/mini.pairs'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'windwp/nvim-ts-autotag'
Plug 'nvim-treesitter/nvim-treesitter-textobjects'

call plug#end()

colorscheme onedark

" Other setting
for setting_file in split(glob(stdpath('config').'/settings/*.vim'))
  execute 'source' setting_file
endfor