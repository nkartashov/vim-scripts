#!/bin/bash

RESULT_FOLDER=~/vim-scripts
set -e
if [[ ! -d $RESULT_FOLDER ]]; then
  git clone git@github.com:nkartashov/vim-scripts.git $RESULT_FOLDER
fi
ln -s $RESULT_FOLDER/vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo 'Install solarized stuff yourself, will ya?'
