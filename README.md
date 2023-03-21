# Bash Installers

[![License](https://img.shields.io/badge/License-MIT-green.svg?style=flat)](./LICENSE)

Scripts to install common used tools, themes and plugins for Unix based terminals.

### Features included when you run `install-all`

- brew
- gettext
- git
- tree
- zsh bash
- oh-my-zsh with **powelevel10k** theme
- zsh-autosuggestions plugin
- sdkman
- Jdk 11 zulu distribution
- maven
- ruby (required by colorls)
- colorls

### Installation

- git clone this project
- `$ source ./installers/install.sh`
- `$ install-all` or run manually only the installers you prefer

### How to use

To install everything just run `install-all`.

Otherwise, you can install manually just the features you need:

- brew: `install-brew`
- git (requires *brew*): `install-brew-git`
- tree (requires *brew*): `install-brew-tree`
- zsh (requires *brew*): `install-zsh`
- oh-my-zsh (requires *zsh*): `install-oh-my-zsh`
- powerlevel10k theme (requires *oh-my-zsh*): `install-powerlevel10k-theme`
- zsh-autosuggestions plugin (requires *zsh*): `install-zsh-autosuggestions`
- sdkman: `install-sdkman`
- Jdk <version>, zulu distro (requires *sdkman*): `install-sdkman-java <version>`. Example to install latest 11 version run `install-sdkman-java 11`
- maven (requires *sdkman*): `install-sdkman-maven`
- ruby (requires *brew*): `install-ruby`
- colorls (requires *ruby*): `install-colorls`
