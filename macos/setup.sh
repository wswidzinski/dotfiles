#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")"

# install xcode
./xcode.sh

# install homebrew
./homebrew.sh

# install applications
./brew.sh
./brew-cask.sh

# install RVM
./rvm.sh

# install fish
./fish.sh

# install plugins via fisherman
./fisher.fish

# copy iterm preferences
cp ./iterm2_profile/com.googlecode.iterm2.plist ~/Library/Preferences
