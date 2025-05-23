### Install homebrew

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Install oh my zsh

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### Install zed from

[https://zed.dev/releases/preview](https://zed.dev/releases/preview)

### Install bat and use it over cat

```sh
brew install bat
```

### Install diff-so-fancy for better git diffs

```sh
brew install diff-so-fancy
```

### install fzf and use it for ctrl+r

```sh
brew install fzf
$(brew --prefix)/opt/fzf/install
```

### install zsh autosuggestions

```sh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
```

### This will install latest node as a dependency

```sh
brew install yarn
```

### Install Rust

```sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

### Install a bunch of other tools

```sh
brew install --cask google-chrome
brew install --cask slack
brew install --cask docker
brew install --cask alfred
brew install --cask bettertouchtool
brew install --cask rectangle
brew install --cask sublime-merge
brew install --cask ghostty
brew install httpie
brew install erd
brew install fzf
brew install git-delta
brew install starship
brew install lazygit
brew install zellij
brew install alacritty

$(brew --prefix)/opt/fzf/install
```

```sh
cp .zshrc ~/.zshrc
cp .fzf.zsh ~/.fzf.zsh
cp .gitconfig ~/.gitconfig
```

```sh
ln -Fvs ~/labs/dotfiles/zed ~/.config
ln -Fvs ~/labs/dotfiles/helix ~/.config
ln -Fvs ~/labs/dotfiles/zellij ~/.config
ln -Fvs ~/labs/dotfiles/starship.toml ~/.config
ln -Fvs ~/labs/dotfiles/ghostty ~/.config
ln -Fvs ~/labs/dotfiles/.zshrc ~/
```
