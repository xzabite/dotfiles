#!/bin/sh
export ZDOTDIR=$HOME/.config/zsh
HISTFILE=~/.zsh_history
setopt appendhistory

source "$ZDOTDIR/zsh-functions"

zsh_add_file "zsh-aliases"

zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
  eval "$(pyenv init -)"
fi

export PATH="/usr/local/opt/node@16/bin:$PATH"

eval "$(starship init zsh)"

export EDITOR="vim"
export BROWSER="chrome"

