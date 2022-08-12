if status is-interactive
    # Commands to run in interactive sessions can go here
end

if [ -e /opt/homebrew/bin/brew ]
    eval (/opt/homebrew/bin/brew shellenv)
end
export EDITOR='nvim'
export GOPATH=$HOME/go

# fish-syntax aliases
alias dstopall='docker stop (docker ps -q)'


set -U fish_greeting
starship init fish | source
