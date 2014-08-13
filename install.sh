#!/bin/bash

# update the submodules
git submodule update -i

# Symbolic links
ln -sf ${PWD}/.bashrc     ~/
ln -sf ${PWD}/bin         ~/
ln -sf ${PWD}/.vim        ~/
ln -sf ${PWD}/.vimrc      ~/
ln -sf ${PWD}/.chktexrc   ~/
ln -sf ${PWD}/.oh-my-zsh  ~/
ln -sf ${PWD}/.zshrc      ~/
