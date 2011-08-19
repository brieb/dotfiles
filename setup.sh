#!/bin/bash

DIR=~/dotfiles


# Vim stuff
DIR_VIM=$DIR/vim
ln -s $DIR_VIM/vimrc ~/.vimrc
ln -s $DIR_VIM/gvimrc ~/.gvimrc
ln -s $DIR_VIM/vim ~/.vim
ln -s $DIR_VIM/vimperator ~/.vimperator

mkdir -p ~/.vim_runtime/undodir

#tmux stuff
ln -s $DIR/tmux/tmux.conf ~/.tmux.conf
ln -s $DIR/tmux/tmuxinator ~/.tmuxinator
