#!/usr/bin/env bash
set -e

WORKSPACE=~/workspace

mkdir -p $WORKSPACE
mkdir -p $HOME/go

printf "\nSetup XCode\n"
xcode-select --install

if ! command -v brew > /dev/null 2>&1; then
  printf "\nInstalling Brew\n"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew analytics off
fi
printf "\nUpdating Brew\n"
brew update
brew upgrade

printf "\nSetup Ruby\n"
brew install rbenv
gem install bundle

printf "\nInstalling Bundle Packages\n"
bundle install

printf "\nInstalling Brew Packages\n"
set +e
brew bundle
set -e

printf "\nSetup Git\n"
source ./aliases/git

printf "\nSetup Aliases\n"
cp aliases/bash ~/.aliases

printf "\nSetup Bash\n"
cp bash/bashrc ~/.bashrc
cp bash/bash_profile ~/.bash_profile

printf "\nSetup Bash-it\n"
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh

source ~/.bash_profile

printf "\nSetup VIM\n"
wget https://www.dropbox.com/s/hj4567h7h78ncip/vim.zip
unzip vim.zip
cp -R vim/.vim ~/.vim
cp vim/*.vim ~/
vim +'PlugInstall --sync' +qa

# Note from Mark:
# python was renamed to pynvim
