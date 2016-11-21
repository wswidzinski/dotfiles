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
