-- https://github.com/max397574/better-escape.nvim
local present, escape = pcall(require, "better_escape")

if not present then
    return
end

local options = {
    clear_empty_lines = true, -- clear line after escaping if there is only whitespace
}

escape.setup(options)
