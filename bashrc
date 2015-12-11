# ~/.bashrc
export DOTFILES_FOLDER=~/.dotfiles
export BASH_DOTFILES=$DOTFILES_FOLDER
#export SCRIPTS=$HOME/scripts

#source ${SCRIPTS}/global.conf
#source ${SCRIPT_TOOLS}/tools.sh

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# load color
source ${DOTFILES_FOLDER}/libs/bash_color

# load history config
source ${DOTFILES_FOLDER}/bash_history_rc

# load environement variables
source ${DOTFILES_FOLDER}/env/bash_env

# load aliases
source ${DOTFILES_FOLDER}/aliases/bash_aliases

# enable checkwinsize
shopt -s checkwinsize

# enable history appending instead of overwriting
shopt -s histappend

# enable completion features
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# LANG
# export LC_ALL="fr_FR.UTF-8"
# export LANG="fr_FR.UTF-8"
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"

# generate core dump
ulimit -c unlimited

# improve a better git view
unset PAGER
unset LESS

umask 022
