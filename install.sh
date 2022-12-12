#!/usr/bin/env bash

#----------------------------------------------------------
# fail fast
set -Eeuo pipefail

DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd -P)  # go and get the location of script
readonly DIR

if command -v proxychains &> /dev/null; then
  PC=proxychains
else
  PC=
fi

#----------------------------------------------------------
# functions

# error message
err() {
  echo -e "\033[31mError: $*\033[0m" >&2  # print in red color
}

# Link .vimrc
function link_vimrc {
  if [[ ! -f "$HOME/.vimrc" ]]; then
    ln -s "$DIR/vim/.vimrc" "$HOME/.vimrc"
  else
    err "'.vimrc' already exists."
    exit 1
  fi
}

# Show Neovim(NvChad) menu
function neovim_menu {
  clear
  echo
  echo -e "\t\tNeoVim Configuration Menu\n"
  echo -e "\ta. Install/Update NeoVim"
  echo -e "\tb. Install/Update NvChad"
  echo -e "\tc. Link custom files"
  echo -e "\td. Install dependencies"
  echo -e "\tq. Exit NeoVim configuration\n\n"
  echo -en "\t\tPlease enter your option: "
  read -rn 1 NVIM_OPT
}

# Configure NeoVim
function config_neovim {
  while true; do
    neovim_menu
    case $NVIM_OPT in
      q)
        clear
        break
        ;;
      a)
        clear
        # Install/Update NeoVim
        if [[ ! -f /tmp/nvim.appimage ]]; then
          $PC curl -L https://github.com/neovim/neovim/releases/latest/download/nvim.appimage -o /tmp/nvim.appimage
        fi
        chmod u+x /tmp/nvim.appimage
        sudo mv /tmp/nvim.appimage /usr/local/bin/nvim
        ;;
      b)
        clear
        # Install/Update NvChad
        if [[ -d "$HOME/.config/nvim/" && ! -d "$HOME/.config/nvim/lua/custom/" ]]; then
          err "Please backup your previous NeoVim configuration first!"
          exit 1
        elif [[ ! -d "$HOME/.config/nvim/" ]]; then
          $PC git clone https://github.com/NvChad/NvChad "$HOME/.config/nvim" --depth 1
        else
          cd "$HOME/.config/nvim"
          $PC git pull
        fi
        ;;
      c)
        clear
        # Link configuration files
        if [[ -d "$HOME/.config/nvim/lua/" ]]; then
          if [[ ! -d "$HOME/.config/nvim/lua/custom/" ]]; then
            ln -s "$DIR/nvchad/custom" "$HOME/.config/nvim/lua/custom"
          fi
        else
          err "Path '$HOME/.config/nvim/lua/' does not exist."
          exit 1
        fi
        ;;
      d)
        clear
        # Install dependencies
        if command -v apt &> /dev/null; then
          sudo apt install ripgrep unzip
        fi
        if command -v pip3 &> /dev/null; then
          pip3 install pysocks
        fi
        ;;
      *)
        clear
        err "Sorry, unknown selection."
        ;;
    esac

    echo -en "\n\n\t\tHit any key to continue"
    read -rn 1
  done
  clear
}


# Link .tmux.conf
function link_tmux {
  if [[ ! -f "$HOME/.tmux.conf" ]]; then
    ln -s "$DIR/.tmux.conf" "$HOME/.tmux.conf"
  else
    err "'.tmux.conf' already exists."
    exit 1
  fi
}

# Show option menu
function menu {
  clear
  echo
  echo -e "\t\tDotfiles Configuration Menu\n"
  echo -e "\t1. Vim"
  echo -e "\t2. NeoVim(NvChad)"
  echo -e "\t3. tmux"
  echo -e "\t0. Exit\n\n"
  echo -en "\t\tPlease enter your option: "
  read -rn 1 OPT
}

#----------------------------------------------------------
# main

while true; do
  menu
  case $OPT in
    0)
      break
      ;;
    1)
      clear
      link_vimrc
      echo "done."
      ;;
    2)
      clear
      config_neovim
      continue
      ;;
    3)
      clear
      link_tmux
      echo -e "done."
      ;;
    *)
      clear
      err "Sorry, unknown selection."
      ;;
    esac

    echo -en "\n\n\t\tHit any key to continue"
    read -rn 1
done
clear
