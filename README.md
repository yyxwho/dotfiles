# dotfiles

step 0:
---

### UBUNTU
    
    sudo apt-get install vim git zsh
    chsh -s /bin/zsh
    reboot
    sudo add-apt-repository ppa:martin-frost/thoughtbot-rcm
    sudo apt-get update
    sudo apt-get install rcm

step 1:
---

    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim +PluginInstall +qall
    rcup

step 2:
---
    mkdir $MY_DBASE -p
    mkdir $MY_SRC -p
    mkdir $MY_REPO -p
    mkdir $MY_PROJ -p
    mkdir $MY_GO -p
    git update-index --assume-unchanged *.local
