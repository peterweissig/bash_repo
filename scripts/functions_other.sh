#!/bin/bash

#***************************[version control]*********************************
# 2018 09 10

function _repo_diff() {

    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME <repo_type> [<local_path>]"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME needs 0-1 parameters"
        echo "     #1: type of repository (\"git\" or \"svn\")"
        echo "    [#2:]locale path (e.g. /home/egon/workspace/)"
        echo "Shows difference between current und previous version"
        echo "of the given repository."
        echo "For visualization, \"meld\" will be executed."
        echo "You may also be interested into the following two functions:"
        echo "  repo_svn_diff and repo_git_diff"

        return
    fi

    # check parameter
    if [ $# -lt 1 ] || [ $# -gt 2 ]; then
        echo "$FUNCNAME: Parameter Error."
        $FUNCNAME --help
        return -1
    fi
    if [ "$1" != "svn" ] && [ "$1" != "git" ]; then
        echo "$FUNCNAME: First parameter must be \"svn\" or \"git\"."
        return -2
    fi
    REPO_TYPE="$1"

    if [ $# -lt 2 ]; then
        local_path="."
    else
        local_path="$2"
    fi

    # check local path
    if [ "$REPO_TYPE" == svn ]; then
        error_temp="$(svn info "$local_path" 2>&1 > /dev/null)"
    else
        error_temp="$(cd "$local_path" && \
          git config --list --local  2>&1 > /dev/null)"
    fi
    if [ "$error_temp" != "" ] ; then
        echo "$FUNCNAME: Directory is not a ${REPO_TYPE}-repository."
        return -2
    fi

    # check for changes
    if [ "$REPO_TYPE" == svn ]; then
        info_temp="$(svn stat -q "$local_path" 2>&1)"
    else
        info_temp="$(cd "$local_path" && git status --short 2>&1)"
    fi
    if [ "$info_temp" != "" ] ; then
        echo "$FUNCNAME: There are uncommitted changes."
        echo ""
        if [ "$REPO_TYPE" == svn ]; then
            svn stat "$local_path"
        else
            (cd "$local_path" && git status)
        fi
        return -3
    fi
        # check for errors
        if [ $? -ne 0 ]; then
            echo "$FUNCNAME: Stopping because of an error."
            return -1;
        fi

    # create temp path
    dir_temp=~/temp/${REPO_TYPE}_diff/
    if [ -e "$dir_temp" ]; then
        echo "Remove old compare data"
        rm -rf "$dir_temp"
    fi
    mkdir -p "$dir_temp"
        # check for errors
        if [ $? -ne 0 ]; then
            echo "$FUNCNAME: Stopping because of an error."
            return -1;
        fi

    # copy data
    cp --recursive "$local_path"  "$dir_temp"
        # check for errors
        if [ $? -ne 0 ]; then
            echo "$FUNCNAME: Stopping because of an error."
            return -1;
        fi

    # update to an older version
    if [ "$REPO_TYPE" == svn ]; then
        svn up -r PREV "$local_path"
    else
        (cd "$local_path" && git checkout HEAD^)
    fi
        # check for errors
        if [ $? -ne 0 ]; then
            echo "$FUNCNAME: Stopping because of an error."
            return -1;
        fi

    # compare versions
    meld  "$local_path" "$dir_temp"

    # print info
    echo "This Repository was updated to an older revision!"
    echo "You may use:"
    if [ "$REPO_TYPE" == svn ]; then
        echo "  \$ svn up"
    else
        echo "  \$ git checkout master"
    fi
}

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

function repo_additional_dirs_status() {

    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME needs 0 parameters"
        echo "Calls \"git status\" on all locally versioned directories."

        return
    fi

    # check parameter
    if [ $# -gt 0 ]; then
        echo "$FUNCNAME: Parameter Error."
        $FUNCNAME --help
        return -1
    fi

    # check status of additional dirs
    for i in "${!REPO_ADDITIONAL_DIRS_GIT[@]}"; do
        _repo_git_st "${REPO_ADDITIONAL_DIRS_GIT[$i]}"
    done
}
