"" ======================== OPTIONS ====================================
"" 基础配置
if &compatible
    set nocompatible         " 关闭 Vi 兼容模式
endif

set confirm                  " 在处理未保存或只读文件时，弹出确认提示
set noerrorbells             " 有错误信息时不响铃
set visualbell
set fileformats=unix,dos,mac " 文件换行符，默认使用 unix 换行符
set lazyredraw               " 延迟绘制，提升性能
set ruler                    " 显示光标的位置
set cursorline               " 突出显示光标当前行
"  set signcolumn
set colorcolumn=120          " 右侧参考线
"  set cmdheight=2              " 设定命令行行数
set wrap                     " 超过窗口宽度的行回绕显示
set linebreak                " 在合适的地方折行
set hidden
set mouse=n                  " 允许使用鼠标, normal 生效，a 则是全模式生效
set wildmenu                 " Vim 自身命令行模式智能补全
set pumheight=10             " 补全最多显示 10 行
set t_Co=256                 " 启用 256 色
"  set termguicolors            " 开启真彩色
set showmatch                " 显示括号匹配
set history=50               " 历史记录条数
set textwidth=120            " 设置行宽

"" 设置编码
if has('multi_byte')
    set encoding=utf-8
    set fileencoding=utf-8
    set fileencodings=ucs-bom,utf-8,gb18030,cp936,latin1
    set termencoding=utf-8
endif

set autochdir                " 自定切换当前目录为当前文件所在的目录
set autoread                 " 当前文件在 Vim 外被修改且未重新载入，则自动读取
set autowrite                " 自动写回

"" jkhl 移动时光标周围保留 8 行
set scrolloff=8
set sidescrolloff=8

"" 行号
set number                   " 显示行号
set relativenumber           " 显示相对行号
set numberwidth=2

"" Tab 键与缩进配置
set tabstop=4                " 设定 tab 缩进空格数
set softtabstop=4            " 使得按退格键时可以一次删掉的空格数
set shiftround               " 缩进列数对齐到 shiftwidth 的整数倍
set shiftwidth=4             " 设置自动缩进长度
set expandtab                " Tab 转空格

set autoindent               " 新增行与前一行具有相同缩进形式
set smartindent              " 类似 cindent

"" 查找配置
set ignorecase               " 忽略大小写
set smartcase                " 智能搜索

set hlsearch                 " 高亮显示搜索结果
set incsearch                " 增量搜索

"" 文件备份
set nobackup                 " 不创建备份文件
set nowritebackup            " 编辑时不创建备份文件
set noswapfile               " 不创建临时交换文件

"" 时间延迟
set updatetime=300           " 更快的写入 (默认为 4000ms)
set timeoutlen=500           " 等待键盘快捷键连击时间 (ms)

"" 窗口
set splitbelow               " 强制所有的横向拆分到当前窗口以下
set splitright               " 强制所有的垂直分割到当前窗口的右边

set list
set listchars="space:·,tab:-->"

set showtabline=2            " 永远显示 tabline
set showmode                 " 在最后一行提示消息
set laststatus=2             " 总是显示状态栏

"" 代码折叠
if has('folding')
    " set foldmethod=indent    " 基于缩进进行代码折叠
    set foldmethod=syntax    " 基于语法进行代码折叠
    set nofoldenable         " 启动 Vim 时关闭折叠代码
endif

set clipboard+=unnamedplus   " 与系统共用剪切板
set shortmess+=c             " Don't pass messages to |ins-completion-menu|.
set whichwrap+="<,>,[,],h,l"

"" 文件类型设置
if has('autocmd')
    filetype plugin indent on " 打开文件类型检测，打开加载文件类型插件，为不同类型文件定义不同缩进格式
endif

if has('syntax')
    syntax on                " 开启语法高亮
endif

"" ======================== KEYMAPS ====================================
"" 按键映射

" 空格键作为 leader 键
let mapleader=" "

" ===============
" NORMAL
" ===============

" 保存
nnoremap <C-s> :w<CR>

" 跳到行首
nnoremap H ^
" 跳到行尾
nnoremap L $

" 分屏
nnoremap <leader>v <C-w>v
nnoremap <leader>s <C-w>s

" 光标在分屏间跳转
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" 分屏比例控制
nnoremap <C-Left> <C-w><
nnoremap <C-Right> <C-w>>
nnoremap <C-Up> <C-w>-
nnoremap <C-Down> <C-w>+
nnoremap <leader>= <C-w>=

" Tab 间跳转，用于 Visual Studio 插件：vsVim
nnoremap <Tab> :tabn<CR>
nnoremap <S-Tab> :tabp<CR>
" 用于终端下的 vim
if has('unix') || has('mac')
    " Buffer 间跳转
    nnoremap <Tab> :bnext<CR>
    nnoremap <S-Tab> :bprevious<CR>
endif

" 上下移动选中文本
" https://vim.fandom.com/wiki/Moving_lines_up_or_down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==

" ===============
" INSERT
" ===============

" 退出 insert 模式返回到 normal 模式
inoremap jk <Esc>
inoremap jj <Esc>

" 移动光标
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

" 单行首尾跳转
inoremap <C-b> <ESC>^i
inoremap <C-e> <End>

" 上下移动选中文本
inoremap <A-j> <Esc>:move .+1<CR>==gi
inoremap <A-k> <Esc>:move .-2<CR>==gi

" ===============
" VISUAL
" ===============

" 光标单行跳转
vnoremap <S-h> ^
vnoremap <S-l> $

" 调整缩进
vnoremap < <gv
vnoremap > >gv

" 删除
vnoremap <Backspace> x

" 上下移动选中文本
vnoremap <A-j> :move >+1<CR>gv=gv
vnoremap <A-k> :move <-2<CR>gv=gv

" 只粘贴不复制
vnoremap p \"_dp

" ===============
" VISUAL BLOCK
" ===============

" 光标单行跳转
xnoremap <S-h> ^
xnoremap <S-l> $

" 上下移动选中文本
xnoremap <A-j> :move >+1<CR>gv=gv
xnoremap <A-k> :move <-2<CR>gv=gv

" ===============
" TERMINAL
" ===============

" 打开终端
nnoremap <leader>h :term<CR>

" 退出
tnoremap <C-x> <C-\\><C-N>
tnoremap <ESC> <C-\\><C-N>

"" ======================== AUTOCMDS ====================================
"" 恢复光标形状
" https://vim.fandom.com/wiki/Change_cursor_shape_in_different_modes
if has('unix')
    " for Gnome-Terminal (version >= 3.16)
    if has("autocmd")
        au VimEnter,InsertLeave * silent execute '!echo -ne "\e[1 q"' | redraw!
        au InsertEnter,InsertChange *
            \ if v:insertmode == 'i' |
            \   silent execute '!echo -ne "\e[5 q"' | redraw! |
            \ elseif v:insertmode == 'r' |
            \   silent execute '!echo -ne "\e[3 q"' | redraw! |
            \ endif
        au VimLeave * silent execute '!echo -ne "\e[5 q"' | redraw!  " works well for Hyper and Gnome-Terminal
    endif
endif

" 普通模式使用混合行号，插入模式使用绝对行号
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber
