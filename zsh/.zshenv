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

# Rails Postgres Usernames and Passwords

# 'practice_tests'
export PRACTICE_TESTS_DATABASE_USERNAME="practice_tests"
export PRACTICE_TESTS_DATABASE_PASSWORD="practice_tests2021"

# 'factory_bot_hello_world'
export FACTORY_BOT_DATABASE_USERNAME="factory_bot_hello_world"
export FACTORY_BOT_DATABASE_PASSWORD="test123"
