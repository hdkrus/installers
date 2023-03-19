#!/bin/bash
#
# zsh & oh-my-zsh installers

#######################################
# Install zsh
# Globals:
#   None
# Arguments:
#   None
# Output:
#   Installation output
#######################################
function install-zsh() {
  echo "Installing zsh..."
  if [ "$(is-installed zsh)" != "0" ]; then
    brew install zsh
    exec zsh -l
  else
    echo "- zsh is already installed"
  fi
}

#######################################
# Install on-my-zsh
# Globals:
#   None
# Arguments:
#   None
# Output:
#   Installation output
#######################################
function install-oh-my-zsh() {
  echo "Installing oh-my-zsh..."
  if [ ! -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  else
    echo "- oh-my-zsh is already installed"
  fi
}

#######################################
# Install powerlevel10k on oh-my-zsh theme
# Globals:
#   None
# Arguments:
#   None
# Output:
#   Installation output
#######################################
function install-powerlevel10k-theme() {
    echo "Installing powerlevel10k theme"
    local theme_path="$HOME/.powerlevel10k"
    if [ ! -d "$theme_path" ]; then
      git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$theme_path"
      echo "source $theme_path/powerlevel10k.zsh-theme" >>~/.zshrc
      exec zsh
    else
      echo "- powerlevel10k theme is already installed"
    fi
}

#######################################
# Install zsh-autosuggestions plugin
# Globals:
#   None
# Arguments:
#   None
# Output:
#   Installation output
#######################################
function install-zsh-autosuggestions() {
  echo "Installing zsh-auto-suggestions plugin..."
  local plugin_path="$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions"
  if [ ! -d "$plugin_path" ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions "$plugin_path"
    source "$HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"

    echo "INFO: Add zsh-autosuggestions to plugins variable in .zshrc and restart terminal"
  else
    echo "- zsh-autosuggestions plugin is already installed"
  fi
}
