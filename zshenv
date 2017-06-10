#!/usr/bin/env zsh
if [ ! -z $MY_ENV ]; then
    return
fi

export PATH="$HOME/.local/bin:$HOME/.bin:$PATH"

# Some private directory
export MY_WS_DBASE="$HOME/Developer"
export MY_WS_SRC="$MY_WS_DBASE/sources"
export MY_WS_REPO="$MY_WS_DBASE/repositories"
export MY_WS_PROJ="$MY_WS_DBASE/projects"
export MY_WS_BOX="$MY_WS_DBASE/boxes"
export MY_WS_GO="$MY_WS_DBASE/go"
export MY_WS_OPT="$MY_WS_DBASE/opt"

# my private work env
export MY_WS_PWORK="$MY_WS_DBASE/primary_work"
export MY_WS_PREPO="$MY_WS_PWORK/repositories"

if [ "$COLORTERM" = "gnome-terminal" ]; then
    export TERM=xterm-256color
    export COLORTERM=xterm-256color
fi

# most for  colorful man  
# 	http://www.cyberciti.biz/faq/unix-linux-color-man-pages-configuration/
# 	http://www.jedsoft.org/most/
[[ -f /usr/bin/most ]]  && export PAGER="/usr/bin/most"
[[ -f /usr/local/bin/most ]]  && export PAGER="/usr/local/bin/most"

[[ -f /usr/bin/vim ]]  && export EDITOR="/usr/bin/vim"
[[ -f /usr/local/bin/vim ]]  && export EDITOR="/usr/local/bin/vim"

if [ `uname` = "Darwin" ]; then
    # GNU Toolkit
    export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
    export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
    # GO
    export GOROOT="/usr/local/opt/go/libexec"
    export PATH=$PATH:$GOROOT/bin
fi

export GOPATH="$MY_WS_DBASE/go"
export PATH=$PATH:$GOPATH/bin

export MY_ENV="done"
