-- https://github.com/neovim/nvim-lspconfig

local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
local servers = {
    ---- LSP ----
    -- "bashls",
    "clangd",
    "cmake",
    -- "cssls",
    -- "dockerls",
    -- "dotls",
    -- "eslint",
    "gopls",
    -- "html",
    -- "jsonls",
    -- "pyright",
    -- "rust_analyzer",
    -- "sqlls",
    "sumneko_lua",
    -- "tsserver",
    "vimls",
    -- "vuels",
    -- "yamlls",
}

for _, server in ipairs(servers) do
    local opts = {
        on_attach = on_attach,
        capabilities = capabilities,
    }

    -- 'custom/lsp/' 中的文件名必须与服务器名一致
    local has_custom_opts, server_custom_opts = pcall(require, "custom.lsp." .. server)
    if has_custom_opts then
        opts = vim.tbl_deep_extend("force", opts, server_custom_opts)
    end

    lspconfig[server].setup(opts)
end
