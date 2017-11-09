if [ ! -z $MY_RC ]; then
    return
fi

# load oh-my-zsh
[[ -f ~/.oh-my-zsh.rc ]] && . ~/.oh-my-zsh.rc

# load env
[[ -f ~/.zshenv ]] && . ~/.zshenv
[[ -f ~/.zshenv.local ]] && . ~/.zshenv.local

# local zshrc
[[ -f ~/.zshrc.local ]] && . ~/.zshrc.local

# load aliases
[[ -f ~/.aliases ]] && . ~/.aliases
[[ -f ~/.aliases.local ]] && . ~/.aliases.local

# autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# zsh-bd
. $HOME/.oh-my-zsh/custom/plugins/bd/bd.zsh

export MY_RC="done"
