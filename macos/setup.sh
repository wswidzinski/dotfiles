#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")"

# install xcode
./xcode.sh

# install homebrew
./homebrew.sh
