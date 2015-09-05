#!/bin/sh

DOTFILES=$HOME/.dotfiles
SCRIPTS=$HOME/scripts

# Files separation
source $DOTFILES/bash_color
source $DOTFILES/aliases_std
source $DOTFILES/aliases_cla
source $DOTFILES/env_std
source $DOTFILES/env_cla
source $DOTFILES/env_qt
source $SCRIPTS/tools/tools.sh
source $SCRIPTS/global.conf

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


function vidiff() 
{
    tmp=$1
    orig=$2
    file=$3

    [ -z $tmp ] && vidiff_usage && exit 0
    [ -z $orig ] && vidiff_usage && exit 0
    [ -z $tmp/$file ] && vidiff_usage && exit 0
    [ -z $orig/$file ] && vidiff_usage && exit 0

    vimdiff $orig/$file $tmp/$file 
}

function vidiff_usage ()
{
    echo -e "${COLOR226}vidiff usage: vidiff  path_tmp  path_orig  file_to_compare${COLORNONE}"
}
