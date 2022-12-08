export EDITOR="/usr/local/bin/zed"
export TERM="xterm-256color"
export ZSH=~/.oh-my-zsh
export UPDATE_ZSH_DAYS=7

COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"

plugins=(git macos zsh-autosuggestions)
#autoload -U compinit && compinit

# User configuration
DEFAULT_USER="damoonrashidi"
#prompt_context(){
#  prompt_git
#}


# ============ PATHS ============

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"
export PATH="/usr/local/sbin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/Users/damoonrashidi/.deno/bin:$PATH"
export PATH="/Users/damoonrashidi/.cargo/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
source $ZSH/oh-my-zsh.sh


# ============ ALIASES ============

alias gstat="git status"
alias gph="gp -u origin HEAD"
alias glogb="git log --graph --abbrev-commit --decorate --first-parent"
alias gcod="gco develop"
alias gcom="gco master"
alias grbd="grb -i develop"
alias gmd="gm develop"
alias gbdm="git branch --merged | grep -v "\*" | xargs git branch -d"
alias gbauthor="git for-each-ref --format='%(committerdate) %09 %(authorname) %09 %(refname)' --sort=committerdate"
alias gflict="git diff --name-only --diff-filter=U"
alias gccb="git rev-parse --abbrev-ref HEAD | pbcopy"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias chrome="open -a \"Google Chrome\""
alias cat="bat"
alias ls="fzf --preview 'bat {-1} --color=always'"
alias tunnel-staging="ssh -A -L 3306:127.0.0.1:3306 damoonrashidi@stage-full-601.freespee.net"
alias emu="/Users/damoonrashidi/tools/android/emulator/emulator"
alias fs="du -sch"
alias docker-gc="docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v /etc:/etc spotify/docker-gc"

csv() {
  column -s, -t < "$1" | less -#2 -N -S
}

unalias gd
gd() {
  preview="git diff $@ --color=always -- {-1}"
  git diff $@ --name-only | fzf -m --ansi --preview $preview
}

export STARSHIP_CONFIG=~/.config/starship.toml
eval "$(starship init zsh)"
