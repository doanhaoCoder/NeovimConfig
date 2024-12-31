lua << EOF
require('mini.pairs').setup({
  modes = { insert = true, command = true, terminal = false },
  skip_next = [=[[%w%%%'%[%"%.%`%$]]=], -- Các ký tự mà autopair sẽ bỏ qua
  skip_ts = { "string" },              -- Không tự động đóng cặp trong các node Treesitter được chỉ định
  skip_unbalanced = true,              -- Bỏ qua khi ký tự đóng nhiều hơn ký tự mở
  markdown = true,                     -- Tối ưu tự động đóng cặp trong Markdown code blocks
})
EOF
