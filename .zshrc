export EDITOR="/opt/homebrew/bin/hx"
export TERM="xterm-256color"
export ZSH=~/.oh-my-zsh
export UPDATE_ZSH_DAYS=14

COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"

plugins=(git macos rust gh npm yarn colorize)

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

ask() {
  local question="$@"
  # Read the OpenAI API token from the environment variable
  local api_key="${OPENAPI_KEY:-}"

  # Call the OpenAI API to get the equivalent zsh command
  local api_response=$(curl -s -X POST \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer $api_key" \
    -d '{
      "model": "gpt-3.5-turbo-1106",
      "messages": [
      {"role": "system", "content": "You are a helpful bash code snippet generator. You will be provided a description of the requested bash command and you should output the bash command and nothing else, your response should be a valid JSON string not an object. Just a string that is valid json, not surrounded by quotes."},
      {"role": "user", "content": "'${question}'"}]
    }' \
    "https://api.openai.com/v1/chat/completions")

  # Parse the zsh command from the API response
  local zsh_command=$(echo "$api_response" | jq -r '.choices[0].message.content')

  # Return the zsh command
  echo "$zsh_command"
}


export STARSHIP_CONFIG=~/.config/starship.toml
eval "$(starship init zsh)"
SPACESHIP_PROMPT_ASYNC=FALSE
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
