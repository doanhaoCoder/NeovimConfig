" Hiển thị số dòng tương đối
set number              " Hiển thị số dòng
set relativenumber      " Hiển thị số dòng tương đối

" Tìm kiếm không phân biệt hoa thường
set ignorecase          " Không phân biệt hoa thường
set smartcase           " Phân biệt hoa thường nếu có ký tự viết hoa trong từ tìm kiếm

set list                " Hiển thị các ký tự vô hình (spaces, tab, v.v.)
set listchars=tab:▸\ ,trail:·,eol:↴ " Tùy chỉnh cách hiển thị các ký tự vô hình
set tabstop=4           " Thiết lập độ rộng của tab là 4 spaces
set shiftwidth=4        " Đặt độ rộng của việc thụt lề là 4 spaces
set softtabstop=4       " Đặt số spaces tương đương với một tab khi đang ở chế độ insert
set expandtab           " Sử dụng spaces thay vì tab thực tế

" Thiết lập để tự động xuống dòng khi văn bản dài
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