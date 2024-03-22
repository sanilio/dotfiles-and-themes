#!/bin/bash

# Define the base directory
base_dir=~/.config/dotfiles-and-themes

create_symlink() {
    local source_file=$1
    local target_file=$2

    if [ -e "$source_file" ]; then
        ln -sf "$source_file" "$target_file" && echo "Created symlink: $target_file -> $source_file"
    else
        echo "Source file does not exist: $source_file"
    fi
}

# zsh
create_symlink "$base_dir/zsh/.zshrc" "$HOME/.zshrc"

# tmux
create_symlink "$base_dir/tmux/.tmux.conf" "$HOME/.tmux.conf"

# vim
create_symlink "$base_dir/vim/.vimrc" "$HOME/.vimrc"
mkdir -p ~/.vim/colors
create_symlink "$base_dir/vim/.vim/colors/catppuccin_mocha.vim" "$HOME/.vim/colors/catppuccin_mocha.vim"

# git
create_symlink "$base_dir/git/.gitconfig" "$HOME/.gitconfig"