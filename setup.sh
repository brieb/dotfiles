#!/bin/bash

DIR=$HOME/dotfiles

function gen_sym {
  file=$DIR/$1/$2;
  fileln=$(echo $file | sed 's/.*\/\(.*\)$/\.\1/g');
  fileln=$HOME/$fileln;
  rm $fileln;
  ln -s $file $fileln;
}
function autogen_sym {
  for file in $DIR/$1/* ; do
    file=$(echo $file | sed 's/.*\/\(.*\)$/\1/g')
    gen_sym $1 $file
  done
}

autogen_sym vim 
mkdir -p ~/.vim_runtime/undodir

#gen_sym tmux tmux.conf
#gen_sym tmux tmuxinator

#autogen_sym bash

<<<<<<< HEAD
ln -s ~/dotfiles/todo.cfg ~/.todo.cfg

ln -s ~/dotfiles/git/gitconfig .gitconfig
ln -s ~/dotfiles/git/gitignore .gitignore
=======
#ln -s ~/dotfiles/todo.cfg ~/.todo.cfg
>>>>>>> 78efd577d03e882f7a3bb4bcff22081d5367ff26
