local opt = vim.opt

local options = {
    title = true,
    -- 在处理未保存或只读文件时，是否需要确认
    confirm = true,
    visualbell = true,
    -- 右侧参考线
    colorcolumn = "120",
    -- 命令行高为 2，提供足够的显示空间
    -- cmdheight = 2,
    -- 折行
    wrap = true,
    -- 在合适的地方折行
    linebreak = true,
    -- 允许隐藏被修改过的 buffer
    hidden = true,
    -- 鼠标支持
    mouse = "n",
    -- 补全增强
    wildmenu = true,
    -- 补全最多显示 10 行
    pumheight = 10,
    textwidth = 120,
    history = 50,

    -- 自定切换当前目录为当前文件所在的目录
    autochdir = true,
    -- 自动写回
    autowrite = true,

    -- jkhl 移动时光标周围保留 8 行
    scrolloff = 8,
    sidescrolloff = 8,

    -- 使用相对行号
    relativenumber = true,

    -- 缩进 4 个空格等于一个Tab
    tabstop = 4,
    softtabstop = 4,
    shiftround = true,
    -- >> << 时移动长度
    shiftwidth = 4,

    -- 新行对齐当前行
    autoindent = true,

    -- 搜索不要高亮
    hlsearch = true,
    -- 边输入边搜索
    incsearch = true,

    -- 禁止创建备份文件
    backup = false,
    writebackup = false,
    swapfile = false,

    -- 不可见字符的显示，这里只把空格显示为一个点
    list = true,
    listchars = "space:·,tab:-->",
}

for k, v in pairs(options) do
    opt[k] = v
end
