#!/bin/bash
#

clear
echo
tput bold
echo "🧞 PromptGenie Install Script."
tput sgr0
echo
echo "You need admin rights to continue."
echo

BIN_DIR=/usr/bin
HOME_DIR="$HOME"
PG_DIR="$HOME_DIR/pg"

if $(sudo ln -sf $HOME_DIR/pg/pg.sh $BIN_DIR/pg) 2>&1; then

    if [ ! -d "$PG_DIR" ]; then
        mkdir "$PG_DIR";
        mkdir "$PG_DIR/generations";
    fi;

    cp README.txt pg.sh settings.txt spinner.sh $PG_DIR

    clear
    echo
    tput bold
    echo "🧞 PromptGenie is installed!"
    tput sgr0
    echo
    echo "Be sure to update ~/pg/settings.txt with the correct parameters."
    echo
    echo "Finally, type 'pg' followed by your query!"
    echo

else
    echo
    echo "Error. The installer failed because you didn't authenticate with sudo!"
    echo
fi