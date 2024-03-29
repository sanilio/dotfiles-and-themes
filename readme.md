# Terminal, shell, editor, font and theme setup

## Table of Contents

- [🖥️ Terminal](#terminal)
- [🐚 Shell](#shell)
- [📝 Editor](#editor)
- [🦊 Browser](#browser)
- [💾 Operating System](#os)
- [🦙 LLM](#llm)
- [🖋️ Font](#font)
- [🎨 Theme](#theme)
- [🚀 Leggo!!](#leggo)

<div id="terminal" />

## 🖥️ Terminal

- download and install first
  - windows: https://github.com/alacritty/alacritty/releases/download/v0.13.1/Alacritty-v0.13.1-installer.msi
    - [conf](https://alacritty.org/config-alacritty.html) location: `%APPDATA%\alacritty\alacritty.toml`
    - need to download some stuff for mouse: https://github.com/alacritty/alacritty/issues/1663#issuecomment-1917418514
  - mac:
- tmux will be installed. avoid tabs, use tmux panes and windows

<div id="shell" />

## 🐚 Shell

- main shell is zsh, with [oh my zsh](https://ohmyz.sh/) for plugins
  - installation and conf addressed below
  - consider removing oh my zsh altogether, need to figure out how to keep plugins
  - fishshell also looks cool
- currently using [powerlevel10k](https://github.com/romkatv/powerlevel10k) prompt/theme
  - faster than using [starship](https://starship.rs/guide/), has [instant and transient prompt](https://github.com/romkatv/powerlevel10k/blob/master/README.md#instant-prompt)
  - and starship is faster than [spaceship](https://spaceship-prompt.sh/)
- github copilot in the shell, [gh cli](https://cli.github.com/) required

<div id="editor" />

## 📝 Editor

- vscode as main editor: https://code.visualstudio.com/download
  - settings have been synced to github
- keep an eye on [zed](https://zed.dev/), written in rust, once extensions are available could be a better option
- jetbreains (pycharm, goland) for debugging or pro dev
- vimrc included as well

<div id="browser" />

## 🦊 Browser

- firefox has been solid, sync across devices
- [Tree Style Tab](https://github.com/piroor/treestyletab)
  - add css to remove top tabs and recenter search
    - for windows, place in `C:\Users\{user}\AppData\Roaming\Mozilla\Firefox\Profiles\{profile, most recent}\chrome\userChrome.css`
- ctrl+pgup/pgdn for tab switching, not ideal for our keebs
  - need to figure out how to change default alt+arrow behavior in firefox
  - `autoconfig.cfg` seems to be closest option, seems too hacky
  - maybe can use via or other keeb software, macro?

<div id="os" />

## 💾 Operating System

- windows, with ubuntu wsl
  - use windows setup from chris titus tech
  - [PowerToys](https://learn.microsoft.com/en-us/windows/powertoys/install)
    - `winget install Microsoft.PowerToys --source winget`
    - enable FancyZones, override windows snap, create layouts
      - kb shortcuts: `win+shift+arrow` to move window, `win+arrow` to snap
        - cycling through windows cannot be set yet, need to use [autohotkey](https://www.autohotkey.com/) which seems like a chore
          - [\[FZ\] \- hotkey to switch focus between zones · Issue \#15067 · microsoft\/PowerToys](https://github.com/microsoft/PowerToys/issues/15067 "[FZ] - hotkey to switch focus between zones · Issue #15067 · microsoft/PowerToys")
          - [glzr\-io\/glazewm\: GlazeWM is a tiling window manager for Windows inspired by i3 and Polybar\.](https://github.com/glzr-io/glazewm "glzr-io/glazewm: GlazeWM is a tiling window manager for Windows inspired by i3 and Polybar.")
          - [Change active window\/zone with keyboard · Issue \#25831 · microsoft\/PowerToys](https://github.com/microsoft/PowerToys/issues/25831 "Change active window/zone with keyboard · Issue #25831 · microsoft/PowerToys")
          - [\[FancyZones\] Map keyboard shortcuts to zones directly to zone windows quicker · Issue \#492 · microsoft\/PowerToys](https://github.com/microsoft/PowerToys/issues/492 "[FancyZones] Map keyboard shortcuts to zones directly to zone windows quicker · Issue #492 · microsoft/PowerToys")
    - enables alt+space for spotlight like mac
  - use win+1, win+2, etc for taskbar shortcuts
    - win+1: firefox
    - win+2: alacritty
    - win+3: vscode
    - win+4: discord
    - win+5: spotify
    - win+6: heynote
    - win+7: pycharm
    - win+8: steam
    - win+9: sumatra pdf
    - win+0: explorer
    - win terminal
    - goland

<div id="llm" />

## 🦙 LLM

- github copilot is solid, integrates well in vscode and jetbrains, and relatively cheap.
  - also available in the shell
    - first install the [gh cli](https://cli.github.com/)
    - then `gh auth login`
    - install [gh copilot](https://docs.github.com/en/copilot/github-copilot-in-the-cli/using-github-copilot-in-the-cli)
- [ollama](https://ollama.com/download) is very cool. you can use whichever models you like
  - install, pull model, run `ollama serve`
  - in vscode, activate the twinny extension, and select the models for chat (instruct) and auto-complete FIM (fill in the middle)
  - free, private, leverages gpu
  - apparently you can train your own models, perhaps for a specific language or project. could be useful for a large project with a lot of domain-specific terms

<div id="font" />

## 🖋️ Font

- [firacode](https://github.com/tonsky/FiraCode)
  - works in alacritty, keeping it consistent across for now
  - download, right click to install: https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip
- [monaspace](https://monaspace.githubnext.com/)
  - cool but not compatible with alacritty, keep an eye on support

<div id="theme" />

## 🎨 Theme

- [catpuccin](https://github.com/catppuccin/catppuccin), installed as:
  - alacritty theme
  - vim theme
  - tmux theme
  - firefox theme via color extension
  - vscode extension
  - available in jetbrains plugins as well
  - can apply to SumatraPDF, but a little janky

<div id="leggo" />

## 🚀 Leggo!

- install ubuntu wsl

- install alacritty

- launch, make sure we're in WSL, and update apt and install dependencies

  - in case we're not in WSL, try running `wsl` to get there.
    - otherwise can launch ubuntu from the start menu until we get alacritty configured
  - `sudo apt update && sudo apt install -y zsh git tmux fzf zsh-autosuggestions zsh-syntax-highlighting`

- then we `git clone` the repo to `~/.config/dotfiles-and-themes`
- run `./create_symlinks.sh --alacritty_win` here to get the terminal lookin ✨

- install [oh my zsh](https://ohmyz.sh/)

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
  - `./create_symlinks.sh --all`
