#!/bin/sh

DOTFILES="$HOME/.dotfiles"
FUNCTIONS_FOLDER="$DOTFILES/functions/"
LIBS_FOLDER="$DOTFILES/libs/"
ALIASES_FOLDER="$DOTFILES/aliases/"
ENV_FOLDER="$DOTFILES/env/"


# Files separation
source ${LIBS_FOLDER}/bash_color
source ${ALIASES_FOLDER}/aliases_std
source ${ENV_FOLDER}/env_std
source ${ENV_FOLDER}/env_qt

export PAGER=
unset PAGER
unset LESS
# Core dump file size limit
ulimit -c unlimited
umask 022

if [[ -n $DISPLAY && $TERM == "xterm" ]]; then
    export TERM="xterm-256color"
fi

# LANG
# export LC_ALL="fr_FR.UTF-8"
# export LANG="fr_FR.UTF-8"
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"

setxkbmap -option caps:escape
