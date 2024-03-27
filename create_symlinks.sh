#!/bin/bash

: '
This script creates symlinks for the dotfiles in this repository.
The script takes the following arguments:
--zsh: creates a symlink for the .zshrc file
--tmux: creates a symlink for the .tmux.conf file
--vim: creates a symlink for the .vimrc file
--git: creates a symlink for the .gitconfig file
--all: creates symlinks for all the files
'

base_dir=~/.config/dotfiles-and-themes
alacritty_windows=/mnt/c/Users/sanil/AppData/Roaming/alacritty

create_symlink() {
    local source_file=$1
    local target_file=$2

    if [ -e "$source_file" ]; then
        ln -sf "$source_file" "$target_file" && echo "Created symlink: $source_file -> $target_file"
    else
        echo "Source file does not exist: $source_file"
    fi
}

create_zsh() {
    create_symlink "$base_dir/zsh/.zshrc" "$HOME/.zshrc"
}

create_tmux() {
    create_symlink "$base_dir/tmux/.tmux.conf" "$HOME/.tmux.conf"
}

create_vim() {
    create_symlink "$base_dir/vim/.vimrc" "$HOME/.vimrc"
    mkdir -p ~/.vim/colors
    create_symlink "$base_dir/vim/.vim/colors/catppuccin_mocha.vim" "$HOME/.vim/colors/catppuccin_mocha.vim"
}

create_alacritty_windows() {
    mkdir -p alacritty_windows
    # symlinks are not supported WSL -> Windows yet, so we copy
    cp "$base_dir/alacritty/alacritty.toml" "$alacritty_windows/alacritty.toml"
    cp "$base_dir/alacritty/catppuccin-mocha.toml" "$alacritty_windows/catppuccin_mocha.toml"
    echo "Copied alacritty config files to $alacritty_windows"
}

create_git() {
    create_symlink "$base_dir/git/.gitconfig" "$HOME/.gitconfig"
}

create_all() {
    create_alacritty_windows
    create_zsh
    create_tmux
    create_vim
    create_git
}

for arg in "$@"
do
    case $arg in
        --alacritty_win)
        create_alacritty_windows
        shift
        ;;
        --zsh)
        create_zsh
        shift
        ;;
        --tmux)
        create_tmux
        shift
        ;;
        --vim)
        create_vim
        shift
        ;;
        --git)
        create_git
        shift
        ;;
        --all)
        create_all
        shift
        ;;
    esac
done