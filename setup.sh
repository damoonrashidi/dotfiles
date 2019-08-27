#install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#Install bat and use it over cat
brew install bat

#Install diff-so-fancy for better git diffs
brew install diff-so-fancy

#install fzf and use it for ctrl+r
brew install fzf
$(brew --prefix)/opt/fzf/install

#install zsh autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

#install itermocil
brew install TomAnthony/brews/itermocil

#this will install latest node as a dependency
brew install yarn


#install a bunch of other tools
brew cask install google-chrome
brew cask install kitematic
brew cask install slack
brew install httpie
brew install docker

cp .zshrc ~/.zshrc
cp .fzf.zsh ~/.fzf.zsh
cp .gitconfig ~/.gitconfig

