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
