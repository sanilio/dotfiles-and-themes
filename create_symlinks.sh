#!/bin/bash

# Define the base directory
base_dir=~/.config/dotfiles-and-themes

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

create_git() {
    create_symlink "$base_dir/git/.gitconfig" "$HOME/.gitconfig"
}

create_all() {
    create_zsh
    create_tmux
    create_vim
    create_git
}

for arg in "$@"
do
    case $arg in
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