#!/bin/bash

#***************************[svn]*********************************************
# 2018 09 04

function _repo_svn_co() {

    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME <local_path> <server> [<user>]"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME needs 2-3 parameters"
        echo "     #1: locale path (e.g. /home/egon/workspace/repo)"
        echo "     #2: server address (e.g. https://server.local/svn/repo/)"
        echo "    [#3:]remote user name"
        echo "Executes \"svn checkout\" on the given svn-repository."

        return
    fi

    # check parameter
    if [ $# -lt 2 ] || [ $# -gt 3 ]; then
        echo "$FUNCNAME: Parameter Error."
        $FUNCNAME --help
        return -1
    fi

    # check local path
    if [ ! -d "$1" ]; then
        echo "mkdir -p \"${1}\""
        mkdir -p "${1}"
    else
        if [ -d "${1}/.svn" ]; then
            echo "svn repository \"$1\" is already checked out"
            return -2
        fi
    fi

    # svn checkout
    if [ $# -lt 3 ]; then
        echo "svn checkout \"$2\" \"$1\""
        svn checkout "$2" "$1"
    else
        echo "svn checkout --username \"$3\" \"$2\" \"$1\""
        svn checkout --username "$3" "$2" "$1"
    fi
}

function _repo_svn_up() {

    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME <local_path>"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME needs 1 parameter"
        echo "     #1: locale path (e.g. /home/egon/workspace/)"
        echo "Executes \"svn update\" on the given svn-repository."

        return
    fi

    # check parameter
    if [ $# -ne 1 ]; then
        echo "$FUNCNAME: Parameter Error."
        $FUNCNAME --help
        return -1
    fi

    # svn update
    if [ -d "$1" ] && [ -d "$1/.svn" ]; then
        svn update -q "$1"
    fi
}

function _repo_svn_st() {

    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME <local_path>"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME needs 1 parameter"
        echo "     #1: locale path (e.g. /home/egon/workspace/)"
        echo "Executes \"svn status\" on the given svn-repository."

        return
    fi

    # check parameter
    if [ $# -ne 1 ]; then
        echo "$FUNCNAME: Parameter Error."
        $FUNCNAME --help
        return -1
    fi

    # svn stat
    if [ -d "$1" ] && [ -d "$1/.svn" ]; then
        svn stat "$1"
    fi
}

function repo_svn_diff() {

    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME [<local_path>]"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME needs 0-1 parameters"
        echo "    [#1:]locale path (e.g. /home/egon/workspace/)"
        echo "Shows difference between current und previous version"
        echo "of the given svn-repository."
        echo "For visualization, \"meld\" will be executed."

        return
    fi

    # check parameter
    if [ $# -gt 1 ]; then
        echo "$FUNCNAME: Parameter Error."
        $FUNCNAME --help
        return -1
    fi

    _repo_diff "svn" $1
}
# 2018 09 10 old source code (instead of using _repo_diff):
#     if [ $# -lt 1 ]; then
#         local_path="."
#     else
#         local_path="$1"
#     fi
#
#     # check local path
#     error_temp="$(svn info "$local_path" 2>&1 > /dev/null)"
#     if [ "$error_temp" != "" ] ; then
#         echo "$FUNCNAME: Directory is not a svn-repository."
#
#         return -2
#     fi
#
#     # check for changes
#     info_temp="$(svn stat -q "$local_path" 2>&1)"
#     if [ "$info_temp" != "" ] ; then
#         echo "$FUNCNAME: There are uncommitted changes."
#         echo ""
#         svn stat "$local_path"
#
#         return -3
#     fi
#         # check for errors
#         if [ $? -ne 0 ]; then
#             echo "$FUNCNAME: Stopping because of an error."
#             return -1;
#         fi
#
#     # create temp path
#     dir_temp=~/temp/svn_diff/
#     if [ -e "$dir_temp" ]; then
#         echo "Remove old compare data"
#         rm -rf "$dir_temp"
#     fi
#     mkdir -p "$dir_temp"
#         # check for errors
#         if [ $? -ne 0 ]; then
#             echo "$FUNCNAME: Stopping because of an error."
#             return -1;
#         fi
#
#     # copy data
#     cp --recursive "$local_path"  "$dir_temp"
#         # check for errors
#         if [ $? -ne 0 ]; then
#             echo "$FUNCNAME: Stopping because of an error."
#             return -1;
#         fi
#
#     # update to an older version
#     svn up -r PREV "$local_path"
#         # check for errors
#         if [ $? -ne 0 ]; then
#             echo "$FUNCNAME: Stopping because of an error."
#             return -1;
#         fi
#
#     # compare versions
#     meld  "$local_path" "$dir_temp"
#
