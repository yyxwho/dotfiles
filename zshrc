if [ -n $MY_RC ]; then
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
	
	if [ `uname` = "Darwin" ]; then
		[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && source $(brew --prefix)/etc/profile.d/autojump.sh
        [[ -s $(brew --prefix autoenv)/activate.sh ]] && source $(brew --prefix autoenv)/activate.sh
	fi

	[[ -f ~/.zshrc.local ]] && . ~/.zshrc.local
	export MY_RC="done"
fi
