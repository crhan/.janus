#!/usr/bin/env bash
CWD=$(cd $(dirname $0) && pwd )
cd $CWD
for i in vimrc* gvimrc*
do
  ln -sf $CWD/$i ~/.$i
done
git submodule init
git submodule update
