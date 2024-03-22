# Terminal, shell, editor, font and theme setup

## 🖥️ Alacritty terminal emulator

- download and install first
  - windows: https://github.com/alacritty/alacritty/releases/download/v0.13.1/Alacritty-v0.13.1-installer.msi
    - conf location: `%APPDATA%\alacritty\alacritty.toml`
    - need to download some stuff for mouse: https://github.com/alacritty/alacritty/issues/1663#issuecomment-1917418514
  - mac: `brew install alacritty`

## 🐚 zsh, oh-my-zsh

- main shell, with oh-my-zsh for plugins
  - installation and conf addressed below

## 🖋️ font

- firacode
  - good for alacritty, keeping it consistent for now
  - download, right click to install: https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip
- monaspace
  - cool but not compatible with alacritty, keep an eye on support

## 🎨 theme

- [catpuccin](https://github.com/catppuccin/catppuccin), installed as:
  - alacritty theme
  - vim theme
  - vscode extension

## 📝 vscode

- https://code.visualstudio.com/download
- settings have been synced to github

## 🚀 leggo!

- first we `git clone` the repo to `~/.config/dotfiles-and-themes`

  - on windows, it's the Users dir `C:\Users\{user}`. in powershell, `~` points to it.

- next we update apt and install dependencies

  - `sudo apt update && sudo apt install -y zsh fzf zsh-autosuggestions zsh-syntax-highlighting`

- install oh-my-zsh:

  - `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
  - plugins
    - `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`
    - `git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions`

- install zoxide

  - `curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash`
  - there is a line for this in `.zshrc`, it must be at the end

- install nvm

  - `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash`
  - `nvm install node 14`
  - `nvm use 14`

- install go

  - https://go.dev/doc/install
  - `wget ~/downloads/https://go.dev/dl/go1.22.1.linux-amd64.tar.gz && sudo tar -C /usr/local -xzf go1.22.1.linux-amd64.tar.gz`
    - golang path handled in `.zshrc`

- install pyenv and python

  - `sudo apt install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python3-openssl`
  - `curl https://pyenv.run | bash`
  - `pyenv install 3.11.3`
  - `pyenv global 3.11.3`

- then we create symlinks to the conf files in the repo
  - `./create_symlinks.sh`
