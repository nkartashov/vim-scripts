#!/bin/bash

RESULT_FOLDER=~/vim-scripts
git clone git@github.com:nkartashov/vim-scripts.git $RESULT_FOLDER &&
ln -s $RESULT_FOLDER/vimrc ~/.vimrc && 
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim &&
echo 'Install solarized stuff yourself, will ya?'
