#!/bin/bash

#***************************[_repo_svn_co]************************************
# 2020 01 28

function _repo_svn_co() {

    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME <local_path> <server> [<user>] [<disp_name>]"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME needs 2-3 parameters"
        echo "     #1: locale path (e.g. /home/egon/workspace/repo)"
        echo "     #2: server address (e.g. https://server.local/svn/repo/)"
        echo "    [#3:]remote user name"
        echo "    [#4:]displayed name of repository"
        echo "Executes \"svn checkout\" on the given svn-repository."

        return
    fi

    # check parameter
    if [ $# -lt 2 ] || [ $# -gt 4 ]; then
        echo "$FUNCNAME: Parameter Error."
        $FUNCNAME --help
        return -1
    fi

    # load parameters
    PARAM_PATH="$1"
    PARAM_SERVER="$2"
    PARAM_USERNAME="$3"
    if [ $# -lt 4 ]; then
        REPO_NAME="$(basename "$PARAM_PATH")"
    else
        REPO_NAME="$4"
    fi

    # check local path
    if [ ! -d "$PARAM_PATH" ]; then
        echo "mkdir -p \"$PARAM_PATH\""
        mkdir -p "$PARAM_PATH"
    fi

    # display repo name
    echo ""
    echo "###s $REPO_NAME ###"

    # svn checkout
    if [ "$PARAM_USER" == "" ]; then
        echo "svn checkout \"$PARAM_SERVER\" \"$PARAM_PATH\""
        svn checkout "$PARAM_SERVER" "$PARAM_PATH"
    else
        echo "svn checkout --username \"$PARAM_USER\" \\"
        echo "  \"$PARAM_SERVER\" \"$PARAM_PATH\""
        svn checkout --username "$PARAM_USER" "$PARAM_SERVER" "$PARAM_PATH"
    fi
}

#***************************[_repo_svn_up]************************************
# 2020 01 28

function _repo_svn_up() {

    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME <local_path> [<disp_name>]"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME needs 1-2 parameters"
        echo "     #1: locale path (e.g. /home/egon/workspace/)"
        echo "    [#2:]displayed name of repository"
        echo "Executes \"svn update\" on the given svn-repository."

        return
    fi

    # check parameter
    if [ $# -lt 1 ] || [ $# -gt 2 ]; then
        echo "$FUNCNAME: Parameter Error."
        $FUNCNAME --help
        return -1
    fi

    # load parameters
    PARAM_PATH="$1"
    if [ $# -lt 2 ]; then
        REPO_NAME="$(basename "$PARAM_PATH")"
    else
        REPO_NAME="$2"
    fi

    # check local path
    if [ ! -d "$PARAM_PATH" ] || [ ! -d "${PARAM_PATH}/.svn" ]; then
        return
    fi

    # display repo name
    echo "###s $REPO_NAME ###"

    # svn update
    svn update --ignore-externals "$PARAM_PATH"
    if [ $? -eq 0 ]; then
        svn update --quiet "$PARAM_PATH"
    fi
}

#***************************[_repo_svn_st]************************************
# 2020 01 28

function _repo_svn_st() {

    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME <local_path> [<disp_name>] [<svn-arg> [<svn-arg> ...]"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME needs at least 1 parameter"
        echo "     #1: locale path (e.g. /home/egon/workspace/)"
        echo "    [#2:]displayed name of repository"
        echo "    ...: all others are passed to the svn function"
        echo "Executes \"svn status\" on the given svn-repository."

        return
    fi

    # check parameter
    if [ $# -lt 1 ]; then
        echo "$FUNCNAME: Parameter Error."
        $FUNCNAME --help
        return -1
    fi

    # load parameters
    PARAM_PATH="$1"
    if [ $# -lt 2 ]; then
        REPO_NAME="$(basename "$PARAM_PATH")"
    else
        REPO_NAME="$2"
    fi

    # check local path
    if [ ! -d "$PARAM_PATH" ] || [ ! -d "${PARAM_PATH}/.svn" ]; then
        return
    fi

    # display repo name
    echo "###s $REPO_NAME ###"

    # svn stat
    shift
    shift
    svn stat --ignore-externals "$PARAM_PATH" "$@"
}

#***************************[_repo_svn_st_quiet]******************************
# 2020 01 28

function _repo_svn_st_quiet() {

    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME <local_path> [<disp_name>]"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME needs 1-2 parameters"
        echo "     #1: locale path (e.g. /home/egon/workspace/)"
        echo "    [#2:]displayed name of repository"
        echo "Executes \"svn status\" on the given svn-repository."

        return
    fi

    # check parameter
    if [ $# -lt 1 ] || [ $# -gt 2 ]; then
        echo "$FUNCNAME: Parameter Error."
        $FUNCNAME --help
        return -1
    fi

    # load parameters
    PARAM_PATH="$1"
    if [ $# -lt 2 ]; then
        REPO_NAME="$(basename "$PARAM_PATH") (quiet!)"
    else
        REPO_NAME="$2"
    fi

    # svn stat
    _repo_svn_st "$PARAM_PATH" "$REPO_NAME" --quiet
}

#***************************[svn_diff]****************************************
# 2019 05 09

function repo_svn_diff() {

  echo "repo_svn_diff is deprecated - please use svn_diff"
  svn_diff "$@"
}

function svn_diff() {

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
