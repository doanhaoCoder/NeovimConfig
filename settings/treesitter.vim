lua << EOF
    require'nvim-treesitter.configs'.setup {
    ensure_installed = { 
        "javascript",     -- JavaScript: Ngôn ngữ chính trong React
        "typescript",     -- TypeScript: Nếu bạn sử dụng TypeScript với React
        "html",           -- HTML: Để làm việc với JSX trong React
        "css",            -- CSS: Để tạo style cho ứng dụng React
        "scss",           -- SCSS (nếu bạn sử dụng SASS/SCSS để viết CSS)
        "json",           -- JSON: Thường sử dụng trong các file cấu hình và dữ liệu API
        "yaml",           -- YAML: Được sử dụng trong các file cấu hình (ví dụ: `docker-compose.yml`, `package.json` có thể chứa dữ liệu YAML)
        "lua",            -- Lua: Dùng khi bạn cần cấu hình cho Neovim (nếu cần)
        "markdown_inline",-- Markdown: Nếu bạn làm việc với tài liệu hoặc README.md
        "vim",            -- Vim: Nếu bạn làm việc với Vim để cấu hình và script cho Neovim
        "python",
        "dockerfile",
        "c",
        "cpp",
    },
    -- Cài đặt parser đồng bộ (chỉ áp dụng với `ensure_installed`)
    sync_install = false,

    -- Tự động cài đặt parser còn thiếu khi vào buffer
    auto_install = true,

    -- Danh sách parser cần bỏ qua khi cài đặt
    ignore_install = { "c", "cpp", "lua" },

    highlight = {
        enable = true,  -- Bật chức năng làm nổi bật cú pháp

        -- Tắt làm nổi bật cú pháp cho các ngôn ngữ trong danh sách
        disable = { "c", "cpp", "lua" },

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
EOF