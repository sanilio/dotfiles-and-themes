# system, terminal, shell setup

## alacritty terminal

- download
  - windows: https://github.com/alacritty/alacritty/releases/download/v0.13.1/Alacritty-v0.13.1-installer.msi
    - conf: %APPDATA%\alacritty\alacritty.toml
- need to download some stuff for mouse: https://github.com/alacritty/alacritty/issues/1663#issuecomment-1917418514

## zsh, oh-my-zsh:

- .zshrc
- location: ~/.zshrc
- will have to apt install stuff for plugins to work
  - fzf, zsh-autosuggestions, zsh-syntax-highlighting, zsh-completions

## font

- monaspace

## theme

- catpuccin

## vscode

- settings have been synced to github

## symlinks

- first we git clone the repo to ~/.config/dotfiles-and-themes
- next we update apt and install the necessary packages
  - `sudo apt update && sudo apt install -y zsh fzf`
  - then we install oh-my-zsh: `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
- then we create symlinks to the files in the repo
  - we can use the script in the repo to do this:
  - `./create-symlinks.sh`
