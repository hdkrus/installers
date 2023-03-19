#!/bin/bash
#
# Import all installers

declare INSTALL_PATH

#######################################
# Get current script path
# Globals:
#   INSTALL_PATH
# Arguments:
#   None
# Output:
#   None
#######################################
function curr-dir() {
  INSTALL_PATH=$(dirname "${(%):-%x}")
}

#######################################
# Run all installers
# Globals:
#   None
# Arguments:
#   None
# Output:
#   Shows installers output
#######################################
function install-all() {
  install-brew
  install-brew-git
  install-brew-tree
  install-zsh
  install-oh-my-zsh
  install-powerlevel10k-theme
  install-zsh-autosuggestions
  install-sdkman
  install-sdkman-java 11
  install-colorls
}

curr-dir

libs="$INSTALL_PATH/libs"
source "$libs/common.sh"
source "$libs/brew.sh"
source "$libs/oh-my-zsh.sh"
source "$libs/sdkman.sh"
source "$libs/ruby.sh"
