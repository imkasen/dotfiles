local function termcodes(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local M = {}

M.disabled = {
    i = {
        -- go to  beginning and end
        ["<C-b>"] = "",
        ["<C-e>"] = "",
    },

    n = {
        -- line numbers
        ["<leader>n"] = "",
        ["<leader>rn"] = "",
    },
}

M.general = {
    n = {
        -- 光标单行跳转
        ["<S-h>"] = { "^", "beginning of line" },
        ["<S-l>"] = { "$", "end of line" },

        -- 分屏
        ["<leader>v"] = { "<C-w>v", "split window to right" }, -- 垂直分割窗口到右侧
        ["<leader>s"] = { "<C-w>s", "split window to bottom" }, -- 横向分割窗口到下侧

        -- 分屏比例控制
        ["<C-Left>"] = { "<C-w><", "adjust window <" },
        ["<C-Right>"] = { "<C-w>>", "adjust window >" },
        ["<C-Up>"] = { "<C-w>-", "adjust window -" },
        ["<C-Down>"] = { "<C-w>+", "adjust window +" },
        ["<leader>="] = { "<C-w>=", "adjust window =" }, -- 相等比例

    },

    v = {
        -- 光标单行跳转
        ["<S-h>"] = { "^", "beginning of line" },
        ["<S-l>"] = { "$", "end of line" },

        -- ">" "<" 调整缩进
        ["<"] = { "<gv", "adjust indentation <" },
        [">"] = { ">gv", "adjust indentation >" },

        -- 删除
        ["<Backspace>"] = { "x", "delete" },
    },

    x = {
        -- 光标单行跳转
        ["<S-h>"] = { "^", "beginning of line" },
        ["<S-l>"] = { "$", "end of line" },
    },

    t = {
        ["<Esc>"] = { termcodes "<C-\\><C-N>", "escape terminal mode" },
    },
}

M.nvimtree = {
    n = {
        -- toggle
        ["<C-b>"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },
    },
}

return M
