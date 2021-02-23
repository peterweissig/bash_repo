#!/bin/bash

#***************************[local repos]*************************************

# 2020 12 27
function _repo_additional_dirs_load() {

    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME needs 0 parameters"
        echo "Loads all dirs stored in file"
        echo "  \"$REPO_FILE_ADDITIONAL_GIT\""
        echo "into variable \"REPO_ADDITIONAL_DIRS_GIT\"."

        return
    fi

    # check parameter
    if [ $# -gt 0 ]; then
        echo "$FUNCNAME: Parameter Error."
        $FUNCNAME --help
        return -1
    fi

    # check if file exists
    if [ ! -e "$REPO_FILE_ADDITIONAL_GIT" ]; then
        export REPO_ADDITIONAL_DIRS_GIT=()
        return
    fi

    # load dirs
    readarray -t REPO_ADDITIONAL_DIRS_GIT < "$REPO_FILE_ADDITIONAL_GIT"
    for i in "${!REPO_ADDITIONAL_DIRS_GIT[@]}"; do
        if [ ! -d ${REPO_ADDITIONAL_DIRS_GIT[$i]} ]; then
            echo -n "warning: found non-existing dir in "
            echo "$REPO_FILE_ADDITIONAL_GIT"
            echo "  (${REPO_ADDITIONAL_DIRS_GIT[$i]})"
        fi
    done
}

# 2020 12 27
function repo_additional_dirs_add() {

    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME [<local_path>]"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME needs 0-1 parameters"
        echo "    [#1:]locale path (e.g. /home/egon/workspace/)"
        echo "Adds the given path to the locally versioned git repositories."

        return
    fi

    # check parameter
    if [ $# -gt 1 ]; then
        echo "$FUNCNAME: Parameter Error."
        $FUNCNAME --help
        return -1
    fi

    # local path or load from command line
    if [ $# -lt 1 ]; then
        path="$(pwd)"
    else
        path="$1"
    fi

    # check path
    if [ ! -d "$path" ]; then
        return
    fi

    # store path with trailing '/'
    path="$(realpath "$path")/"

    # set up as git repo
    if [ ! -d "${path}.git" ]; then
        git init "$path"
    fi
        # check for errors
        if [ $? -ne 0 ]; then
            echo "$FUNCNAME: Stopping because of an error."
            return -1;
        fi


    # check if already loaded
    for i in "${!REPO_ADDITIONAL_DIRS_GIT[@]}"; do
        if [ "$path" == "${REPO_ADDITIONAL_DIRS_GIT[$i]}" ]; then
            echo -n "warning: dir already exists in "
            echo "$REPO_FILE_ADDITIONAL_GIT"
            echo "  (${REPO_ADDITIONAL_DIRS_GIT[$i]})"

            return -2
        fi
    done

    echo "$path" >> $REPO_FILE_ADDITIONAL_GIT
    REPO_ADDITIONAL_DIRS_GIT+=("$path")
}

# 2021 02 23
function repo_additional_dirs_status() {

    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME"
        echo "$FUNCNAME [--filter]"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME has 1 option and needs no parameters"
        echo "    [--filter] simplifies the output"
        echo "Calls \"git status\" on all locally versioned directories."

        return
    fi

    # check option '--filter'
    if [ "$1" == "--filter" ]; then
        $FUNCNAME | _repo_filter_git_grep | _repo_filter_git_awk
        return $?
    fi

    # check parameter
    if [ $# -gt 0 ]; then
        echo "$FUNCNAME: Parameter Error."
        $FUNCNAME --help
        return -1
    fi

    # check status of additional dirs
    for i in "${!REPO_ADDITIONAL_DIRS_GIT[@]}"; do
        _repo_git_st "${REPO_ADDITIONAL_DIRS_GIT[$i]}" \
          "${REPO_ADDITIONAL_DIRS_GIT[$i]}"
    done
}
