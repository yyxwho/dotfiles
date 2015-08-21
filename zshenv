# homebrew
export PATH="/usr/local/sbin:$PATH"

# GNU Toolkit
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

# GO
export GOROOT="/usr/local/opt/go/libexec"
export PATH=$PATH:$GOROOT/bin
#export GOPATH=""
#export PATH=$PATH:$GOPATH/bin

# JAVA
export JAVA_HOME="/Library/Java/Home"
export PATH=$JAVA_HOME/bin:$PATH
export CLASSPATH=.:$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib

# GRADLE
export GRADLE_HOME="/usr/local/Cellar/gradle/2.4/libexec/"
export PATH=$PATH:$GRADLE_HOME/bin

# GOLANG
export GOPATH="$HOME/Developer/go"
export PATH=$PATH:$GOPATH/bin
