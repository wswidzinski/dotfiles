#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "./utils.sh"

install_brew_cask_apps() {
    # Install native apps
    brew_install "spectacle" "spectacle" "caskroom/cask" "cask"
    brew_install "dropbox" "dropbox" "caskroom/cask" "cask"
    brew_install "slack" "slack" "caskroom/cask" "cask"

    # dev
    brew_install "iterm2" "iterm2" "caskroom/cask" "cask"
    brew_install "sourcetree" "sourcetree" "caskroom/cask" "cask"

    # fonts
    brew_install "meslo font for powerline" "font-meslo-lg-for-powerline" "caskroom/fonts" "cask"

    # other stuff
    brew_install "vlc" "vlc" "caskroom/cask" "cask"
    brew_install "utorrent" "utorrent" "caskroom/cask" "cask"
}

main() {
    print_in_purple "\n   Brew Cask\n\n"

    install_brew_cask_apps
    printf "\n"
    brew_cleanup
}

main
