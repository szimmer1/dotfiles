# dotfiles
Shahar Zimmerman, updated 1/20/2017

#### Install
The repository has some static copies of dotfiles, as well as some git submodules for Vim plugins.

Dependencies: `git`

    git clone https://github.com/szimmer1/dotfiles
    cd dotfiles
    
    # Initialize submodules
    git submodule init
    git submodule update --checkout
    
    # Link files to appropriate locations
    ln -s ./.vim ~/.vim
    ln -s ./.vimrc ~/.vimrc
    