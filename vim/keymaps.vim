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

" Buffer 间跳转
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

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
