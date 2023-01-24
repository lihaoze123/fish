set -gx PATH "$HOME/.cargo/bin" $PATH
set -gx ALL_PROXY "http://127.0.0.1:7890"
set -gx HTTP_PROXY "http://127.0.0.1:7890"
set -gx HTTPS_PROXY "http://127.0.0.1:7890"
set -gx SOCKS_PROXY "socks://127.0.0.1:7891"

if status --is-login
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        exec startx -- -keeptty
    end
end

starship init fish | source
zoxide init fish | source
set fish_greeting

alias cat="bat"
alias find="fd"
alias ls='exa --git --icons --color=always --group-directories-first'
alias cp="xcp"
alias grep="rg"
alias rm="rip --graveyard  ~/.local/share/Trash"
alias cd="z"
alias du="dust"
alias vim="nvim"
alias ra="ranger"
alias lg="lazygit"
