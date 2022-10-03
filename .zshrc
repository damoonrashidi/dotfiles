export EDITOR="zed"
export TERM="xterm-256color"
# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="theunraveler"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Android SDK stuff
export ANDROID_HOME="/Users/damoonrashidi/tools/android"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="false"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Add wisely, as too many plugins slow down shell startup.
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git macos zsh-autosuggestions colorize aws)
autoload -U compinit && compinit

# User configuration
DEFAULT_USER="damoonrashidi"
prompt_context(){
  prompt_git
}

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:~/.rvm/gems/ruby-2.2.1/bin:~/.rvm/gems/ruby-2.2.1@global/bin:~/.rvm/rubies/ruby-2.2.1/bin:~/.rvm/bin:~/tools/arcanist/bin:~/.rvm/bin"
export PATH="./node_modules/.bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/Users/damoonrashidi/.composer/vendor/bin:$PATH"
export PATH="/Users/damoonrashidi/tools/flutter/bin":$PATH
export PATH="/Users/damoonrashidi/tools/android/platform-tools:$PATH"
export PATH="/Users/damoonrashidi/tools":$PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/opt/arcanist/bin:$PATH"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/Users/damoonrashidi/.deno/bin:$PATH"
export PATH="/Users/damoonrashidi/.cargo/bin:$PATH"
export GEM_HOME="$HOME/.gem"
export WEB3_RPC_URL="http://localhost:7545"
export WEB3_PRIVATE_KEY=1b945a5ba69098b1bbeb08edab9c7494e4cec48d5b5401847fea3fb420def9d6
source $ZSH/oh-my-zsh.sh




# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
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
alias tunnel-staging="ssh -A -L 3306:127.0.0.1:3306 damoonrashidi@stage-full-601.freespee.net"
alias emu="/Users/damoonrashidi/tools/android/emulator/emulator"
alias fs="du -sch"
alias docker-gc="docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v /etc:/etc spotify/docker-gc"
function csv() {
  column -s, -t < "$1" | less -#2 -N -S
}


# Load zsh-autosuggestions.
ZSH_HIGHLIGHT_MAXLENGTH=100

function diff {
  colordiff -u "$@" | less -RF
}


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
if type ag &> /dev/null; then
    export FZF_DEFAULT_COMMAND='ag -p ~/.fzfignore -g ""'
fi

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

zstyle ':completion:*' fzf-search-display true

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/damoonrashidi/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/damoonrashidi/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
# if [ -f '/Users/damoonrashidi/tools/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/damoonrashidi/Downloads/google-cloud-sdk/completion.zsh.inc'; fisource /Users/damoonrashidi/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

export STARSHIP_CONFIG=~/.config/starship.toml
eval "$(starship init zsh)"
