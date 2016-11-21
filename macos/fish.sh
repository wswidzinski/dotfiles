#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "./utils.sh"

change_default_shell() {
    if ! grep '/usr/local/bin/fish' < /etc/shells &> /dev/null; then
        execute \
            "printf '%s\n' '/usr/local/bin/fish' | sudo tee -a /etc/shells" \
            "fish (add '/usr/local/bin/fish' in '/etc/shells')" \
        || return 1
    fi

    chsh -s /usr/local/bin/fish &> /dev/null
    print_result $? "fish (use latest version)"
}

main() {
    print_in_purple "\n   Fish\n\n"

    brew_install 'fish' 'fish' \
        && change_default_shell

    brew_install 'fisherman' 'fisherman' 'fisherman/tap'
    printf "\n"
}

main
