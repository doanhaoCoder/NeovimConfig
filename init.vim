" Resize pane
nmap <M-Right> :vertical resize +1<CR>    
nmap <M-Left> :vertical resize -1<CR>
nmap <M-Down> :resize +1<CR>
nmap <M-Up> :resize -1<CR>

call plug#begin(stdpath('config').'/plugged')

Plug 'olimorris/onedarkpro.nvim'

Plug 'nvim-neo-tree/neo-tree.nvim', { 'branch': 'v3.x' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-tree/nvim-web-devicons' " Nếu cần biểu tượng
Plug 'MunifTanjim/nui.nvim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

colorscheme onedark

" Other setting
for setting_file in split(glob(stdpath('config').'/settings/*.vim'))
  execute 'source' setting_file
endfor

nnoremap <silent> <F5> :Neotree<CR>
