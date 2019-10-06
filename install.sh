#!/usr/bin/env bash
set -e

WORKSPACE=~/workspace

mkdir -p $WORKSPACE

# Brew
if ! command -v brew > /dev/null 2>&1; then
  printf "\nInstalling Brew\n"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew analytics off
fi
printf "\nUpdating Brew\n"
brew update
brew upgrade

printf "\nInstalling Packages\n"
brew bundle

printf "\nSetup Aliases\n"

printf "\nSetup Bash\n"

printf "\nSetup VIM\n"
