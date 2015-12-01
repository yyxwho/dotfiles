# load oh-my-zsh
[[ -f ~/.oh-my-zsh.rc ]] && . ~/.oh-my-zsh.rc
# load env
[[ -f ~/.zshenv ]] && . ~/.zshenv
# load aliases
[[ -f ~/.aliases ]] && . ~/.aliases

# brew install autojump ...at first
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
