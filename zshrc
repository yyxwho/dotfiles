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
	
	# brew install autojump ...at first
	if [ `uname` = "Darwin" ]; then
		[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
	fi
	
	[[ -f ~/.zshrc.local ]] && . ~/.zhsrc.local
	export MY_RC="done"
fi
