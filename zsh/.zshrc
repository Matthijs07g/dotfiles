# Plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

# Aliases
alias ls="eza --icons=always -1"
alias ll="eza --icons=always -l"
alias la="eza --icons=always -la"
alias lt="eza --icons=always --tree"

# SSH
if [ -f ~/.ssh/github ]; then
    if ! pgrep -u $USER ssh-agent > /dev/null; then
        eval $(ssh-agent)
    fi
    ssh-add ~/.ssh/github 2>/dev/null
fi

# Starship
eval "$(starship init zsh)"
