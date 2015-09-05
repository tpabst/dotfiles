#!/bin/bash

function delete_symbolic_links () {

	DOTFILE_FOLDER='.dotfiles'
	SYMBOLIC_LINK_FILENAME='symbolic_link.lst'
	SYMBOLIC_LINK_FILEPATH=${HOME}/${DOTFILE_FOLDER}/${SYMBOLIC_LINK_FILENAME}
	while read line; do
		if [ -s ${HOME}/.$line ]; then
			rm -f ${HOME}/.$line
		fi
	done < ${SYMBOLIC_LINK_FILEPATH}
}

function create_symbolic_links () {

	DOTFILE_FOLDER='.dotfiles'
	SYMBOLIC_LINK_FILENAME='symbolic_link.lst'
	SYMBOLIC_LINK_FILEPATH=${HOME}/${DOTFILE_FOLDER}/${SYMBOLIC_LINK_FILENAME}
	while read line; do
		ln -s ${DOTFILE_FOLDER}/$line ${HOME}/.$line
	done < ${SYMBOLIC_LINK_FILEPATH}
}


#delete_symbolic_links
create_symbolic_links
