if status is-interactive
    # Commands to run in interactive sessions can go here
end

eval "$(/opt/homebrew/bin/brew shellenv)"
export EDITOR='nvim'
export GOPATH=$HOME/go

# Aliases
alias wanip='curl ifconfig.me'
alias pingg='ping -c 3 8.8.8.8'
alias sizesort='du -m --max-depth 1 | sort -n'
alias sizeof='du --max-depth=0 -h'
alias weather='curl wttr.in'
alias dstopall='docker stop (docker ps -q)'

set -U fish_greeting
starship init fish | source
