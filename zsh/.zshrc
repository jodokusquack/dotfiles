#!/bin/zsh

# add the plugins path to fpath
fpath=($ZDOTDIR/plugins $fpath)

# +---------+
# | Aliases |
# +---------+
source $DOTFILES/.aliases

# +---------+
# | Options |
# +---------+

# Lines configured by zsh-newuser-install
setopt appendhistory autocd beep nomatch notify

# Do not write duplicates to the history file
setopt HIST_SAVE_NO_DUPS
# Push the current dir visited on the stack
setopt AUTO_PUSHD
# Do not store duplicates in the stack
setopt PUSHD_IGNORE_DUPS
# Do not print the dir stack after pushd or popd
setopt PUSHD_SILENT

# +------------+
# | Completion |
# +------------+
autoload -Uz compinit; compinit

# include hidden files
_comp_options+=(globdots)
source $ZDOTDIR/completion.zsh

# +--------+
# | Prompt |
# +--------+

# to install the spaceship prompt i added the .zfunctions dir to the fpath
# and added a symlink inside there to the actual storage location of the
# prompt (which is under /prompts)
fpath=($ZDOTDIR/.zfunctions $fpath)

# then i have to load the prompt
autoload -U promptinit; promptinit
prompt spaceship

# +----------+
# | Vim-Mode |
# +----------+
# change modes with ESC
bindkey -v
export KEYTIMEOUT=1

# Update cursor depending on mode
# autoload -Uz cursor_mode; cursor_mode

# Use vim keys in the tab completion menu
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# +---------------------+
# | Syntax Highlighting |
# +---------------------+
source "$ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"



