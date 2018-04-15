#!/bin/bash
SAVEDIR=$(pwd)
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
git submodule update --init --recursive
./.vim/bundle/YouCompleteMe/install.py --clang-complete --tern-completer --go-completer
cd $SAVEDIR
