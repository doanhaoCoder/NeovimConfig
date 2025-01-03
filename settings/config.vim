set number              " Hiển thị số dòng
set relativenumber      " Hiển thị số dòng tương đối

set ignorecase          " Không phân biệt hoa thường
set smartcase           " Phân biệt hoa thường nếu có ký tự viết hoa trong từ tìm kiếm

set list                " Hiển thị các ký tự vô hình (spaces, tab, v.v.)
set listchars=tab:▸\ ,trail:·,eol:↴ " Tùy chỉnh cách hiển thị các ký tự vô hình
set tabstop=4           " Thiết lập độ rộng của tab là 4 spaces
set shiftwidth=4        " Đặt độ rộng của việc thụt lề là 4 spaces
set softtabstop=4       " Đặt số spaces tương đương với một tab khi đang ở chế độ insert
set expandtab           " Sử dụng spaces thay vì tab thực tế

set wrap                " Bật chế độ xuống dòng tự động khi dòng văn bản dài
set linebreak           " Giúp tránh việc cắt từ khi xuống dòng
set nowrapscan          " Ngừng tìm kiếm từ cuối dòng nếu không có kết quả
set textwidth=0         " Không giới hạn chiều dài dòng trong các file văn bản
set wrapmargin=0        " Tắt biên giới xuống dòng

let mapleader = " "

nnoremap <Leader>q :qa!

nmap <M-Right> :vertical resize +1<CR>
nmap <M-Left> :vertical resize -1<CR>
nmap <M-Down> :resize +1<CR>
nmap <M-Up> :resize -1<CR>

" Sử dụng clipboard hệ thống mặc định xclip
set clipboard=unnamedplus
nnoremap <leader>y "+y
nnoremap <leader>p "+p

nnoremap <leader>sh :split<CR>
nnoremap <leader>sv :vsplit<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <A-j> :move .+1<CR>==
nnoremap <A-k> :move .-2<CR>==

nnoremap <F6> :Files<CR>
nnoremap <F7> :Rg<CR>