#!/bin/bash

function create_symbolic_links () {

	DOTFILE_FOLDER='.dotfiles'
	DOTFILE_FUNCTIONS=~/$DOTFILE_FOLDER/functions/

    for file in `ls $DOTFILE_FUNCTIONS`; do
		ln -s ${DOTFILE_FUNCTIONS}/$file ~/${DOTFILE_FOLDER}/bin/$file
	done
}

create_symbolic_links
