-- overriding default plugin configs

local M = {}

-- https://github.com/nvim-treesitter/nvim-treesitter#supported-languages
M.treesitter = {
    ensure_installed = {
        "bash",
        "c",
        "cmake",
        "comment",
        "cpp",
        "css",
        "dockerfile",
        "dot",
        "go",
        "html",
        "help",
        "java",
        "javascript",
        "json5",
        "lua",
        "make",
        "markdown",
        "php",
        "python",
        "regex",
        "rust",
        "scss",
        "toml",
        "typescript",
        "vim",
        "vue",
        "yaml",
    },
}

-- https://github.com/williamboman/mason.nvim
M.mason = {
    ensure_installed = {
        -- "bash-language-server",
        "clangd",
        "cmake-language-server",
        -- "css-lsp",
        -- "dockerfile-language-server",
        -- "dot-language-server",
        -- "eslint-lsp",
        -- "gopls",
        -- "html-lsp",
        -- "json-lsp",
        "lua-language-server",
        -- "pyright",
        -- "rust-analyzer",
        -- "sqlls",
        -- "typescript-language-server",
        "vim-language-server",
        -- "vue-language-server",
        -- "yaml-language-server",
    },
}

M.nvimtree = {
    git = {
        enable = true,
    },

    renderer = {
        highlight_git = true,
        icons = {
            show = {
                git = true,
            },
        },
    },
}

M.ui = {
    statusline = {
        separator_style = "arrow", -- default/round/block/arrow
    },
}

return M
