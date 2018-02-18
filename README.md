# dotfiles
Shahar Zimmerman, updated 1/20/2017

#### Install
The repository has some static copies of dotfiles, as well as some git submodules for Vim plugins.

Dependencies: `git`

    git clone https://github.com/szimmer1/dotfiles
    cd dotfiles
    
    # Initialize submodules
    git submodule update --init --recursive
    
    # Link files to appropriate locations
    ln -s ./.vim ~/.vim
    ln -s ./.vimrc ~/.vimrc

#### Individual plugin installations
Some plugins require addition installation

**vim-go**
Open vim and run `:GoInstallBinaries`

**YouCompleteMe**
Navigate to the YouCompleteMe dir `.vim/bundle/YouCompleteMe` and run `./install.py --clang-completer --go-completer`

Open vim with and run `:PluginInstall` to finish installation.
