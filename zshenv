#!/usr/bin/env zsh
# homebrew
export PATH="/usr/local/sbin:$PATH"

# Some private directory
export MY_DBASE="$HOME/Developer"
export MY_SRC="$MY_DBASE/sources"
export MY_REPO="$MY_DBASE/repositories"
export MY_PROJ="$MY_DBASE/projects"
export MY_GO="$MY_DBASE/go"

# my private work env
export MY_PWORK="$MY_DBASE/primary_work"
export MY_PREPO="$MY_PWORK/repositories"

if [ `uname` = "Darwin" ]; then
	# GNU Toolkit
	export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
	export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

	# PAGER
	[[ -f /usr/local/bin/most ]] && export PAGER="/usr/local/bin/most"
	[[ -f /usr/local/bin/vim ]]  && export EDITOR="/usr/local/bin/vim"

	# GO
	export GOROOT="/usr/local/opt/go/libexec"
	export PATH=$PATH:$GOROOT/bin
	export GOPATH="$MY_DBASE/go"
	export PATH=$PATH:$GOPATH/bin

	# JAVA
	export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home"
	export PATH=$JAVA_HOME/bin:$PATH
	export CLASSPATH=.:$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib

	# GRADLE
	export GRADLE_HOME="/usr/local/opt/gradle/libexec/"
	export PATH=$PATH:$GRADLE_HOME/bin
fi
