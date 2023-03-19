#!/bin/bash
#
# ruby installers

#######################################
# Install ruby
# Globals:
#   None
# Arguments:
#   None
# Output:
#   Installation output
#######################################
function install-ruby() {
  echo "Installing ruby..."
  if [ "$(is-installed gem)" != "0" ]; then
    brew install ruby
  else
    echo "- ruby is already installed"
  fi
}

#######################################
# Install colorls (install ruby if missing)
# Globals:
#   None
# Arguments:
#   None
# Output:
#   Installation output
#######################################
function install-colorls() {
  echo "Installing colorls..."
  if [ "$(is-installed colorls)" != "0" ]; then
    install-ruby
    sudo gem install colorls
  else
    echo "- colorls is already installed"
  fi
}
