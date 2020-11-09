#!/usr/bin/env bash

pushd ~/Downloads
  curl -L -o latest_iterm.zip https://iterm2.com/downloads/stable/latest
  unzip latest_iterm.zip
  mv iTerm.app/ /Applications/
  rm latest_iterm.zip
popd

open /Applications/iTerm.app/
