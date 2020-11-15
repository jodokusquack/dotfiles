#!/bin/zsh

# +-------------+
# | Modify Path |
# +-------------+
export PATH="$HOME/bin:/usr/local/bin:$PATH"
# for rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# +-----------------------+
# | ENVIRONMENT VARIABLES |
# +-----------------------+
export DOTFILES="$HOME/.dotfiles"

# zsh
export ZDOTDIR=$DOTFILES/zsh
export HISTFILE=$ZDOTDIR/.zhistory  # History filepath
export HISTSIZE=10000               # Maximum events for internal history
export SAVEHIST=10000               # Maximum events in history file

# Editor
export EDITOR="vim"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
