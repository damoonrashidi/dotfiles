export EDITOR="/opt/homebrew/bin/hx"
export TERM="xterm-256color"
export ZSH=~/.oh-my-zsh
export UPDATE_ZSH_DAYS=14

COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"

plugins=(git macos rust gh npm yarn colorize zsh-autosuggestions)

# User configuration
DEFAULT_USER="damoonrashidi"

source $ZSH/oh-my-zsh.sh
source ~/.secretrc
source ~/.workrc

# ============ PATHS ============

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"
export PATH="/usr/local/sbin:$PATH"
export PATH="/bin/zsh:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/Users/damoonrashidi/.cargo/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/opt/homebrew/bin/svelteserver:$PATH"
export PATH="/opt/homebrew/bin/typescript-language-server:$PATH"
export PATH="/opt/homebrew/bin/graphql-lsp:$PATH"
export PATH="~/.local/bin/:$PATH"
export LIBRARY_PATH="/opt/homebrew/Cellar/sdl2/2.28.5/lib"
export LIBRARY_PATH="$LIBRARY_PATH:$(brew --prefix)/lib:/usr/local/lib"


export DOTNET_ROOT=$HOME/dotnet/sdk
export PATH=$PATH:$HOME/dotnet/runtime
export PATH=$PATH:$HOME/dotnet/sdk
export PATH=$PATH:$HOME/dotnet
export DOTNET_ENVIRONMENT=Local
export ASPNETCORE_ENVIRONMENT=Local

# ============ ALIASES ============

alias gstat="git status"
alias gph="gp -u origin HEAD"
alias glogb="git log --graph --abbrev-commit --decorate --first-parent"
alias gloga="glog --pretty=format:\"%h%x09%an%x09%ad%x09%s\""
alias gcod="gco develop"
alias gcom="gco main"
alias grbd="grb -i develop"
alias gmd="gm dev"
alias gbdm="git branch --merged | grep -v "\*" | xargs git branch -d"
alias gbauthor="git for-each-ref --format='%(committerdate) %09 %(authorname) %09 %(refname)' --sort=committerdate"
alias gflict="git diff --name-only --diff-filter=U"
alias gccb="git rev-parse --abbrev-ref HEAD | pbcopy"
alias chrome="open -a \"Google Chrome\""
alias cat="bat"
alias fs="du -sch"
alias lg="lazygit"
alias gd="lazygit"
alias notes="zed ~/journal/"
alias z="zellij"

function note() {
    current_year=$(date +'%Y')
    current_month=$(date +'%m')
    name="${1:-$(date +'%d')}"

    # Create the directory if it doesn't exist
    mkdir -p ~/journal/$current_year/$current_month

    # Create the file
    touch ~/journal/$current_year/$current_month/$name.md
    zed ~/journal/$current_year/$current_month/
}

function csv() {
  column -s, -t < "$1" | less -#2 -N -S
}

export STARSHIP_CONFIG=~/.config/starship.toml
eval "$(starship init zsh)"
SPACESHIP_PROMPT_ASYNC=FALSE
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source /Users/damoonrashidi/.config/broot/launcher/bash/br

eval "$(atuin init zsh)"
