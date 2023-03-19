#!/bin/bash
#
# Common utils used by installers

if [[ $OSTYPE == 'darwin'* ]]; then
  export OS="macos"
elif [[ $OSTYPE == 'linux'* ]]; then
  if uname -a | grep -q '^Linux.*Microsoft'; then
    export OS="wsl"
  else
    export OS="linux"
  fi
fi

#######################################
# Checks if OS is macOS
# Globals:
#   OS
# Arguments:
#   A command to be checked
# Output:
#   0 if OS is macOS, otherwise 1
#######################################
function is-macos() {
  [ "$OS" == "macos" ] && echo 0 || echo 1
}

#######################################
# Checks if OS is linux
# Globals:
#   OS
# Arguments:
#   A command to be checked
# Output:
#   0 if OS is linux, otherwise 1
#######################################
function is-linux() {
  [ "$OS" == "linux" ] && echo 0 || echo 1
}

#######################################
# Checks if OS is Windows Subsystem Linux
# Globals:
#   OS
# Arguments:
#   A command to be checked
# Output:
#   0 if OS is WSL, otherwise 1
#######################################
function is-wsl() {
  [ "$OS" == "wsl" ] && echo 0 || echo 1
}

#######################################
# Checks if a command exists
# Globals:
#   None
# Arguments:
#   A command to be checked
# Output:
#   0 if command exists, otherwise 1
#######################################
function is-installed() {
  local cmd
  cmd=$1
  (type "$cmd" &> /dev/null && echo 0) || echo 1
}
