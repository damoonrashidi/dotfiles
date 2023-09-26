export EDITOR="/opt/homebrew/bin/hx"
export TERM="xterm-256color"
export ZSH=~/.oh-my-zsh
export UPDATE_ZSH_DAYS=7

COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"

plugins=(git macos)

# User configuration
DEFAULT_USER="damoonrashidi"

# ============ PATHS ============

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"
export PATH="/usr/local/sbin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/Users/damoonrashidi/.deno/bin:$PATH"
export PATH="/Users/damoonrashidi/.cargo/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$PATH:/opt/homebrew/bin/jdtls"
export JAVA_HOME="/opt/homebrew/opt/openjdk@17"

source $ZSH/oh-my-zsh.sh
source ~/.secretrc

# ============ ALIASES ============

alias gstat="git status"
alias gph="gp -u origin HEAD"
alias glogb="git log --graph --abbrev-commit --decorate --first-parent"
alias gloga="glog --pretty=format:\"%h%x09%an%x09%ad%x09%s\""
alias gcod="gco develop"
alias gcom="gco master"
alias grbd="grb -i develop"
alias gmd="gm dev"
alias gbdm="git branch --merged | grep -v "\*" | xargs git branch -d"
alias gbauthor="git for-each-ref --format='%(committerdate) %09 %(authorname) %09 %(refname)' --sort=committerdate"
alias gflict="git diff --name-only --diff-filter=U"
alias gccb="git rev-parse --abbrev-ref HEAD | pbcopy"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias chrome="open -a \"Google Chrome\""
alias cat="bat"
alias ls="erd"
alias run-proxy="mvn spring-boot:run -Dspring-boot.run.profiles=dev,dev-swagger,clients"
alias emu="/Users/damoonrashidi/tools/android/emulator/emulator"
alias fs="du -sch"
alias docker-gc="docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v /etc:/etc spotify/docker-gc"
alias lg="lazygit"
alias notes="zed ~/journal/"

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
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
