# homebrew uses a different path on arm64
if [ -e /opt/homebrew/bin/brew -a (uname -m) = "arm64" ]
    eval (/opt/homebrew/bin/brew shellenv)
end

# fish-syntax aliases
alias dstopall='docker stop (docker ps -q)'

# common-shell
cat $HOME/.config/common-shell/modules/* | source

if status is-interactive
    # Commands to run in interactive sessions can go here
    # remove greeting
    set fish_greeting

    # starship prompt
    starship init fish | source
end
