#!/bin/bash

git clone git@github.com:nkartashov/startup-scripts.git ~/
RESULT_FOLDER=~/startup-scripts
ln -s $RESULT_FOLDER/bashrc ~/.bashrc
