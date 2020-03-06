#!/usr/bin/env bash

# define a function to check if a command exists
command_exists() {
    type "$1" > /dev/null 2>&1
}

echo "Installing dotfiles"
echo "============================="

DOTFILES=$HOME/.dotfiles

linkables=$( find -H "$DOTFILES" maxdepth 3 -name '*.symlink' )
for file in $linkables; do
    target="$HOME/$( basename "$file" '.symlink' )"
    if [ -e "$target" ]; then
        echo "~${target#$HOME} already exists... Skipping."
    else
        echo "Creating symlink for $file"
        ln -s "$file" "$target"
    fi
done
