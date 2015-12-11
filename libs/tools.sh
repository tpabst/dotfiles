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


tools_iconv () {
    echo "Convert the encoding file $1 to utf8"

    INPUT_CHARSET="iso-8859-1"
    OUTPUT_CHARSET="utf8"
    INPUT_FILE=$1
    OUTPUT_FILE=$INPUT_FILE.tmp

    iconv -f $INPUT_CHARSET -t $OUTPUT_CHARSET $INPUT_FILE >> $OUTPUT_FILE
    mv -f $OUTPUT_FILE $INPUT_FILE
}

# Convert all file in a folder
tools_conv_folder () {
    echo "begin to convert..."
    IN_CHARSET="ISO-8859"
    for i in `ls`; do
        if  file $i | grep $IN_CHARSET; then
            tools_iconv $i
            echo "$i has been converted"
        fi
    done
}

# Convert all file in a folder and subfolders
tools_conv_folder_recursive () {
    echo "begin to convert folders and subfolders"
    IN_CHARSET="ISO-8859"
    find -type f -not -path '*.svn*' -not -path "*.git*" | while read file; do
        if  file $file | grep $IN_CHARSET > /dev/null; then
            tools_iconv $file
            echo "$file has been converted"
        fi
    done
}
