#!/bin/bash

# show error and exit -------------------------------------------------------
die () {
    echo >&2 "$@"
    exit 1
}


tools_color () {
    PUCE="${bold}${COLOR33}"
    CMDE="${bold}${COLOR31}"
    COMMENT="${COLORNONE}${COLOR75}"
}
