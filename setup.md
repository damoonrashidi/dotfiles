# install homebrew

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

# install oh my zsh

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

# Install zed from

[https://zed.dev/releases](https://zed.dev/releases)

# Install bat and use it over cat

```sh
brew install bat
```

# Install diff-so-fancy for better git diffs

```sh
brew install diff-so-fancy
```

# install fzf and use it for ctrl+r

```sh
brew install fzf
$(brew --prefix)/opt/fzf/install
```

# install zsh autosuggestions

```sh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
```

# this will install latest node as a dependency

```sh
brew install yarn
```

# install a bunch of other tools

```sh
brew install --cask google-chrome
brew install --cask slack
brew install --cask docker
brew install --cask warp
brew install httpie
```

```sh
cp .zshrc ~/.zshrc
cp .fzf.zsh ~/.fzf.zsh
cp .gitconfig ~/.gitconfig
```
