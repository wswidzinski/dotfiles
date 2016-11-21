#!/usr/bin/env fish

function fisher_install --argument-names 'package_readable_name' 'package'
    if not test -e ~/.config/fish/functions/fisher.fish
        print_error $package_readable_name
        exit 1
    end

    if not test -e ~/.config/fisherman/$package_readable_name
        fisher -q $package
    end

    print_success $package_readable_name
end

function print_success
    set_color green
    printf "   [✔] $argv\n"
    set_color normal
end

function print_error
    set_color red
    printf "   [✖] $argv (Fisherman is not installed)\n"
    set_color normal
end

function main
    set_color purple
    printf "\n   Fisherman\n\n"
    set_color normal

    fisher_install 'bobthefish' 'oh-my-fish/theme-bobthefish'
    fisher_install 'fnm' 'fnm'
    fisher_install 'rvm' 'rvm'
    fisher_install 'fzf' 'fzf'
    fisher_install 'z' 'z'
end

main
