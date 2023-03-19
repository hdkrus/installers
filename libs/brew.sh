#!/bin/bash
#
# brew installers

#######################################
# Install brew and gettext
# Globals:
#   None
# Arguments:
#   None
# Output:
#   Installation output
#######################################
function install-brew() {
  echo "Installing brew..."
  if [ "$(is-installed brew)" != "0" ]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    brew install gettext
    brew link --force gettext
  else
    echo "- brew is already installed"
  fi
}

#######################################
# Install git
# Globals:
#   None
# Arguments:
#   None
# Output:
#   Installation output
#######################################
function install-brew-git() {
  echo "Installing git..."
  if [ "$(is-installed git)" != "0" ]; then
    brew install git
  else
    echo "- git is already installed"
  fi
}

#######################################
# Install tree
# Globals:
#   None
# Arguments:
#   None
# Output:
#   Installation output
#######################################
function install-brew-tree() {
  echo "Installing tree..."
  if [ "$(is-installed tree)" != "0" ]; then
    brew install tree
  else
    echo "- tree is already installed"
  fi
}
