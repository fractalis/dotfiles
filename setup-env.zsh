#!/usr/bin/env zsh

DOTFILES_HOME=$(pwd -P)

typeset -a CONFIGS
CONFIGS=(
"$DOTFILES_HOME/zsh/zshrc:$HOME/.zshrc"
"$DOTFILES_HOME/vim/vimrc:$HOME/.vimrc"
"$DOTFILES_HOME/vim/vimrc.before:$HOME/.vimrc.before"
"$DOTFILES_HOME/vim/vimrc.bundles:$HOME/.vimrc.bundles"
"$DOTFILES_HOME/vim/vimrc.local:$HOME/.vimrc.local"
"$DOTFILES_HOME/gitconfig:$HOME/.gitconfig"
"$DOTFILES_HOME/tmux.conf:$HOME/.tmux.conf"
)
typeset -r CONFIGS

set -e

echo ''

info () {
  print -P "\r [ %F{blue}..%f ] $1"
}

notice () {
  print -P "\r [ %F{202}!!%f ] $1"
}

user () {
  print -P "\r [ %F{143}??%f ] $1"
}

success () {
  print -P "\r [ %F{green}OK%f ] $1"
}

fail () {
  print -P "\r [ %F{red}FAIL%f ] $1"
  echo ''
  exit
}

do_link() {
  local src=$1 dst=$2

  if [ -f "$dst" -o -d "$dst" -o -L "$dst" ]
  then
    notice "Removing $dst"
    rm $dst
    info "Linking $dst to $src"
    ln -s "$1" "$2"
  fi
}

update_configs() {
  local saveIFS=$IFS
  IFS=:
  for config in $CONFIGS;
  do
    paths=(${=config})
    do_link ${paths[1]} ${paths[2]}
  done
  IFS=$saveIFS
}

update_configs
