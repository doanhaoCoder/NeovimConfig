set termguicolors

lua << EOF

vim.api.nvim_set_hl(0, "IndentBlanklineTabChar", { fg = "#98C379" })  -- Màu cho tab_char
vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })  -- Màu cho RainbowRed
vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })  -- Màu cho RainbowBlue

require("ibl").setup({
  indent = {
    char = "│",           -- Ký tự thụt lề
    tab_char = "│",       -- Ký tự tab
    -- highlight = "IndentBlanklineTabChar",  -- Sử dụng nhóm highlight cho tab_char
  },
  scope = {
    show_start = false,    -- Hiển thị phạm vi bắt đầu
    show_end = false,      -- Hiển thị phạm vi kết thúc
    highlight = { "RainbowBlue", "RainbowRed" },  -- Các nhóm highlight cho phạm vi
  },
  exclude = {
    filetypes = {
      "Trouble", "alpha", "dashboard", "help", "lazy", "mason", "neo-tree", 
      "notify", "snacks_dashboard", "snacks_notif", "snacks_terminal", 
      "snacks_win", "toggleterm", "trouble"
    },
  },
})

vim.api.nvim_set_keymap('n', '<leader>ug', ':lua require("ibl").toggle()<CR>', { noremap = true, silent = true })
EOF

" Cấu hình cho màu Rainbow 
let g:rainbow_delimiters = {
    \ 'strategy': {
        \ '': rainbow_delimiters#strategy.global,
        \ 'vim': rainbow_delimiters#strategy.local,
    \ },
    \ 'query': {
        \ '': 'rainbow-delimiters',
        \ 'lua': 'rainbow-blocks',
    \ },
    \ 'priority': {
        \ '': 110,
        \ 'lua': 210,
    \ },
    \ 'highlight': [
        \ 'RainbowDelimiterRed',
        \ 'RainbowDelimiterYellow',
        \ 'RainbowDelimiterBlue',
        \ 'RainbowDelimiterOrange',
        \ 'RainbowDelimiterGreen',
        \ 'RainbowDelimiterViolet',
        \ 'RainbowDelimiterCyan',
    \ ],
\ }