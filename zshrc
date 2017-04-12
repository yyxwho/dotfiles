if [ -z $MY_RC ]; then
    # local zshrc
	[[ -f ~/.zshrc.local ]] && . ~/.zshrc.local

	# load oh-my-zsh
	[[ -f ~/.oh-my-zsh.rc ]] && . ~/.oh-my-zsh.rc
	[[ -f ~/.oh-my-zsh.rc.local ]] && . ~/.oh-my-zsh.rc.local

	# load env
	if [ -n $MY_ENV ]; then
		[[ -f ~/.zshenv ]] && . ~/.zshenv
		[[ -f ~/.zshenv.local ]] && . ~/.zshenv.local
	fi

	# load aliases
	[[ -f ~/.aliases ]] && . ~/.aliases
	[[ -f ~/.aliases.local ]] && . ~/.aliases.local
	
	export MY_RC="done"
fi
