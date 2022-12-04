"" 载入基础配置
let g:repo_name = 'dotfiles'
let g:vim_config_path = $HOME . '/' . g:repo_name . '/vim/'

"" 定义载入配置命令
command! -nargs=1 LoadScript exec 'source ' . g:vim_config_path . '<args>'

LoadScript options.vim
LoadScript keymaps.vim
LoadScript autocmds.vim
