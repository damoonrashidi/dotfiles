export EDITOR="nano"
export TERM="xterm-256color"
# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="theunraveler"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=1

# Android SDK stuff
export ANDROID_HOME="/Users/damoonrashidi/tools/android"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="false"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

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
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git osx zsh-autosuggestions colorize)

# User configuration
DEFAULT_USER="damoonrashidi"
prompt_context(){}

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:~/.rvm/gems/ruby-2.2.1/bin:~/.rvm/gems/ruby-2.2.1@global/bin:~/.rvm/rubies/ruby-2.2.1/bin:~/.rvm/bin:~/tools/arcanist/bin:~/.rvm/bin"
export PATH="./node_modules/.bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/Users/damoonrashidi/.composer/vendor/bin:$PATH"
export PATH="/Users/damoonrashidi/tools/flutter/bin":$PATH
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
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias chrome="open -a \"Google Chrome\""
alias cat="bat"
alias tunnel-staging="ssh -A -L 3306:127.0.0.1:3306 damoonrashidi@stage-full-601.freespee.net"
alias emu="/Users/damoonrashidi/tools/android/emulator/emulator"
alias fs="du -sch"
alias docker-gc="docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v /etc:/etc spotify/docker-gc"



# Load zsh-autosuggestions.
plugins=(zsh-autosuggestions zsh-iterm-touchbar)
source /Users/damoonrashidi/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_MAXLENGTH=100


###-begin-ng-completion###
#
# ng command completion script
#
# Installation: ng completion >> ~/.bashrc (or ~/.zshrc)
#

ng_opts='new init build serve generate autocomplete e2e format lint test version'
init_opts='--dry-run --verbose --blueprint --skip-npm --skip-bower --name'
new_opts='--dry-run --verbose --blueprint --skip-npm --skip-bower --skip-git --directory'
build_opts='--environment --output-path --watch --watcher'
serve_opts='--port --host --proxy --insecure-proxy --watcher --live-reload --live-reload-host
            --live-reload-port --environment --output-path --ssl --ssl-key --ssl-cert'
generate_opts='component directive pipe route service'
test_opts='--watch --browsers --colors --log-level --port --reporters'

if type complete &>/dev/null; then
  _ng_completion() {
    local cword pword opts

    COMPREPLY=()
    cword=${COMP_WORDS[COMP_CWORD]}
    pword=${COMP_WORDS[COMP_CWORD - 1]}

    case ${pword} in
      ng) opts=$ng_opts ;;
      i|init) opts=$init_opts ;;
      new) opts=$new_opts ;;
      b|build) opts=$build_opts ;;
      s|serve|server) opts=$serve_opts ;;
      g|generate) opts=$generate_opts ;;
      test) opts=$test_opts ;;
    esac

    COMPREPLY=( $(compgen -W '${opts}' -- $cword) )

    return 0
  }
  complete -o default -F _ng_completion ng
elif type compctl &>/dev/null; then
  _ng_completion () {
    local words cword opts
    read -Ac words
    read -cn cword
    let cword-=1

    case $words[cword] in
      ng) opts=$ng_opts ;;
      i|init) opts=$init_opts ;;
      new) opts=$new_opts ;;
      b|build) opts=$build_opts ;;
      s|serve|server) opts=$serve_opts ;;
      g|generate) opts=$generate_opts ;;
      test) opts=$test_opts ;;
    esac

    setopt shwordsplit
    reply=($opts)
    unset shwordsplit
  }
  compctl -K _ng_completion ng
fi

###-end-ng-completion###

# zle-line-init() {
#     zle autosuggest-start
# }
# zle -N zle-line-init

function diff {
  colordiff -u "$@" | less -RF
}


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/damoonrashidi/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/damoonrashidi/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/damoonrashidi/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/damoonrashidi/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/damoonrashidi/.config/yarn/global/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/damoonrashidi/.config/yarn/global/node_modules/tabtab/.completions/slss.zshexport PATH="/usr/local/opt/libxml2/bin:$PATH"
