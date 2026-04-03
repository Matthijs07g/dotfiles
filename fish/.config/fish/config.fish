if status is-interactive
# Commands to run in interactive sessions can go here
	alias ls="eza --icons -1"
	alias ll="eza --icons -l -1"
	alias la="eza --icons -la -1"
	alias lt="eza --icons --tree -1"
	if test -f ~/.ssh/github
		keychain --eval --quiet ~/.ssh/github | source
	end
end
