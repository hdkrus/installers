#!/bin/bash
#
# sdkman installers

#######################################
# Install sdkman
# Globals:
#   None
# Arguments:
#   None
# Output:
#   Installation output
#######################################
function install-sdkman() {
  echo "Installing sdkman..."
  if [ "$(is-installed sdk)" != "0" ]; then
    curl -s "https://get.sdkman.io" | bash
    echo "source $HOME/.sdkman/bin/sdkman-init.sh" >>~/.zshrc
  else
    echo "- sdkman is already installed"
  fi
}

#######################################
# Install java zulu distro with sdkman
# Globals:
#   None
# Arguments:
#   JDK version to install
# Output:
#   Installation output
#######################################
function install-sdkman-java() {
  jdk_version=$1
  if [ -n "$jdk_version" ]; then
    zulu_version=$(sdk list java | \grep -o "$jdk_version\.[0-9]*\.[0-9]*-zulu" | head -n 1)
    echo "Installing JDK $zulu_version..."
    if [ -z "$(sdk list java | \grep "installed" | \grep -o "$zulu_version" | head -n 1)" ]; then
      sdk install java "$zulu_version"
    else
      echo "- JDK $zulu_version is already installed"
    fi
  else
    echo "JDK version is required, example: 'install-sdkman-java 8'"
  fi
}
