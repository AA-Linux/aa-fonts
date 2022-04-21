#!/usr/bin/env bash

FONTSDIR=/usr/share/fonts

install_fonts() {
    echo -e "\e[0;32m+---Install Fonts---+\e[0m\n"
    sudo cp -r `pwd`/files/*        "$FONTSDIR"
    echo -e "\e[0;32m Loading in cache... \e[0m"
    fc-cache -fv 1> /dev/null
    echo -e "\n\e[0;32m+-----Finished!-----+\e[0m"
}
install_fonts
