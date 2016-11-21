#!/bin/bash

cd "$(dirname "${bash_source[0]}")" \
    && . "./utils.sh"

install_brew_apps() {
    # GNU core utilities (those that come with OS X are outdated)
    brew_install 'core utils' 'coreutils'
    brew_install 'more utils' 'moreutils'

    # GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
    brew_install 'find utils' 'findutils'

    # GNU `sed`, overwriting the built-in `sed`
    brew_install 'sed' 'gnu-sed --with-default-names'

    # Install wget with IRI support
    brew_install 'wget' 'wget --with-iri'

    # Install more recent versions of some OS X tools
    brew_install 'vim' 'vim --with-override-system-vi'
    brew_install 'grep' 'homebrew/dupes/grep'
    brew_install 'openssh' 'homebrew/dupes/openssh'
    brew_install 'screen' 'homebrew/dupes/screen'

    # github utilities
    brew_install 'hub' 'hub'

    # Install other useful binaries
    brew_install 'the silver searcher' 'the_silver_searcher'
    brew_install 'fzf' 'fzf'
    brew_install 'diff so fancy' 'diff-so-fancy'

    brew_install 'git' 'git'
    brew_install 'imagemagick' 'imagemagick --with-webp'
    brew_install 'tree' 'tree'
    brew_install 'ffmpeg' 'ffmpeg --with-libvpx'

    brew_install 'terminal notifier' 'terminal-notifier'
}

main() {
    print_in_purple "\n   Brew\n\n"

    install_brew_apps
    printf "\n"
    brew_cleanup
    printf "\n"
}

main
