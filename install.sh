#!/usr/bin/env bash
set -e

WORKSPACE=~/workspace

mkdir -p $WORKSPACE
mkdir -p $HOME/go

printf "\nSetup XCode\n"
set +e # sometimes XCode is installed already
xcode-select --install
set -e

if ! command -v brew > /dev/null 2>&1; then
  printf "\nInstalling Brew\n"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  brew analytics off
fi

printf "\nUpdating Brew\n"
brew update
brew upgrade

printf "\nInstalling Brew Packages\n"
set +e # Some packages may no longer be available
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
git clone --depth=1 https://github.com/kardolus/bash-it.git ~/.bash_it
~/.bash_it/install.sh

source ~/.bash_profile

printf "\nSetup VIM\n"
wget https://www.dropbox.com/s/hj4567h7h78ncip/vim.zip
unzip vim.zip
cp -R vim/.vim ~/.vim
cp vim/*.vim ~/
vim +'PlugClean' +qa
vim +'PlugInstall --sync' +qa

printf "\nSetup Bash\n"
sudo echo "/opt/homebrew/bin/bash" >> /etc/shells
chsh -s /opt/homebrew/bin/bash

printf "\nSetup z\n"
mkdir -p ~/workspace/z
wget https://raw.githubusercontent.com/rupa/z/master/z.sh -O ~/workspace/z/z.sh

# Note from Mark:
# python was renamed to pynvim
