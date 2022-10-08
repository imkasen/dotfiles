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
set cmdheight=2              " 设定命令行行数
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
