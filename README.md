# My Dotfiles

## Vim

A simple configuration of vim, just for basic editing, without any plugins.

``` Bash
ln -s ~/dotfiles/vim/.vimrc ~/.vimrc
```

## [NvChad](https://github.com/NvChad/NvChad)

Some configurations of [NeoVim](https://github.com/neovim/neovim) with severial enhanced plugins installed.

*NerdFonts are recommended.*

``` Bash
# install NeoVim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
sudo mv nvim.appimage /usr/local/bin/nvim
# install nvchad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
# install dependencies
sudo apt install ripgrep
pip3 install pysocks
# link configuration files
ln -s ~/dotfiles/nvchad/custom ~/.config/nvim/lua/custom
```

## [tmux](https://github.com/tmux/tmux)

``` Bash
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
```

## `.clang-format`

Copy it directly into project folder.
