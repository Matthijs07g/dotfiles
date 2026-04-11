# _____  _____ __  __
#/__  / / ___// / / /
#  / /  \__ \/ /_/ / 
# / /_____/ / __  /  
#/____/____/_/ /_/   
                    

# Plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

# Aliases
alias ls="eza --icons=always -1"
alias ll="eza --icons=always -l"
alias la="eza --icons=always -la"
alias lt="eza --icons=always --tree"

#Starship
eval "$(starship init zsh)"

# SSH
if [ -f ~/.ssh/github ]; then
    if ! pgrep -u $USER ssh-agent > /dev/null; then
        ssh-agent > ~/.ssh/agent.env
        chmod 600 ~/.ssh/agent.env
    fi
    if [ -f ~/.ssh/agent.env ]; then
        . ~/.ssh/agent.env > /dev/null
    fi
    if ! ssh-add -l > /dev/null 2>&1; then
        ssh-add ~/.ssh/github
    fi
fi
