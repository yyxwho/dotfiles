if [ ! -z $MY_RC ]; then
    return
fi

# load oh-my-zsh
[[ -f ~/.oh-my-zsh.rc ]] && . ~/.oh-my-zsh.rc
[[ -f ~/.oh-my-zsh.rc.local ]] && . ~/.oh-my-zsh.rc.local

# load env
[[ -f ~/.zshenv ]] && . ~/.zshenv
[[ -f ~/.zshenv.local ]] && . ~/.zshenv.local

# local zshrc
[[ -f ~/.zshrc.local ]] && . ~/.zshrc.local

# load aliases
[[ -f ~/.aliases ]] && . ~/.aliases
[[ -f ~/.aliases.local ]] && . ~/.aliases.local

export MY_RC="done"
