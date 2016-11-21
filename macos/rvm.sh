#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "./utils.sh"

install_rvm() {
  if ! cmd_exists "rvm"; then
    printf "\n" | ruby -e "$(curl -sSL https://get.rvm.io | bash)" &> /dev/null
  fi

  print_result $? "RVM"
}

main() {
    print_in_purple "\n   Ruby\n\n"

    install_rvm
    printf "\n"
}

main
