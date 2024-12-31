lua << EOF
require('nvim-treesitter.configs').setup {
  -- Các ngôn ngữ cần cài đặt
  ensure_installed = { 
    "javascript", "typescript", "html", "css", "scss", "json", "yaml", 
    "lua", "markdown_inline", "vim", "python", "dockerfile", "c", "cpp",
  },
  -- Cài đặt parser đồng bộ
  sync_install = false,
  
  -- Tự động cài đặt parser còn thiếu khi vào buffer
  auto_install = true,

  -- Danh sách parser cần bỏ qua khi cài đặt
  ignore_install = { "c", "cpp", "lua" },

  highlight = {
    enable = true,  -- Bật chức năng làm nổi bật cú pháp
    disable = { "c", "cpp", "lua" }, -- Tắt highlight cho một số ngôn ngữ

    -- Hàm để tắt highlight cho các tệp có kích thước lớn
    disable = function(lang, buf)
      local max_filesize = 100 * 1024 -- 100 KB
      local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
      if ok and stats and stats.size > max_filesize then
        return true
      end
    end,

    additional_vim_regex_highlighting = false,
  },
}

require('nvim-ts-autotag').setup({
  enable = true, 
  -- enable_rename = true, 
  enable_close_on_slash = false,
})
EOF
