#!/bin/zsh
#
#
# EXPORT ENVIRONMENT VARIABLES
#


export DOTFILES="$HOME/.dotfiles"

# zsh

export ZDOTDIR=$DOTFILES/zsh
export HISTFILE=$ZDOTDIR/.zhistory  # History filepath
export HISTSIZE=10000               # Maximum events for internal history
export SAVEHIST=10000               # Maximum events in history file


# Editor

export EDITOR="vim"

