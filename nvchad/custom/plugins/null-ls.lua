-- https://github.com/jose-elias-alvarez/null-ls.nvim
-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md
local present, null_ls = pcall(require, "null-ls")

if not present then
    return
end

local b = null_ls.builtins

local sources = {
    ---- formatting --
    b.formatting.clang_format, -- cpp
    -- b.formatting.cmake_format, -- cmake
    -- b.formatting.gofmt, -- go
    -- b.formatting.goimports, -- go import modules
    -- b.formatting.markdownlint, -- markdown
    -- b.formatting.stylua, -- lua
    -- b.formatting.shfmt, -- bash
    -- b.formatting.yapf, -- python
}

null_ls.setup {
    sources = sources,
}
