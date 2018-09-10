#!/bin/bash

#***************************[difference]**************************************
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


#***************************[git]*********************************************
# 2018 09 10

function _repo_git_clone() {

    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME <local_path> <server> [<disp_name>]"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME needs 2-3 parameters"
        echo "     #1: locale path (e.g. /home/egon/workspace/repo)"
        echo "     #2: server address (e.g. https://github.com/robo/main.git)"
        echo "    [#3:]displayed name of repository"
        echo "Executes \"git clone\" on the given git-repository."

        return
    fi

    # check parameter
    if [ $# -lt 2 ] || [ $# -gt 3 ]; then
        echo "$FUNCNAME: Parameter Error."
        $FUNCNAME --help
        return -1
    fi
    if [ $# -lt 3 ]; then
        REPO_NAME="$(basename "$1")"
    else
        REPO_NAME="$3"
    fi

    # display repo name
    echo ""
    echo "### $REPO_NAME ###"

    # clone repo
    echo "git clone \"$2\" \"$1\""
    git clone "$2" "$1"
}

function _repo_git_pull() {

    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME <local_path> [<disp_name>]"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME needs 1-2 parameters"
        echo "     #1: locale path (e.g. /home/egon/workspace/repo)"
        echo "    [#2:]displayed name of repository"
        echo "Executes \"git pull\" on the given git-repository."

        return
    fi

    # check parameter
    if [ $# -lt 1 ] || [ $# -gt 2 ]; then
        echo "$FUNCNAME: Parameter Error."
        $FUNCNAME --help
        return -1
    fi
    if [ $# -lt 2 ]; then
        REPO_NAME="$(basename "$1")"
    else
        REPO_NAME="$2"
    fi

    # check local path
    if [ ! -d "$1" ] || [ ! -d "$1/.git" ]; then
        return
    fi

    # git pull
    echo "### pulling $REPO_NAME ###"
    (cd $1 && git pull --tags)
}

function _repo_git_push() {

    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME <local_path> [<disp_name>]"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME needs 1-2 parameters"
        echo "     #1: locale path (e.g. /home/egon/workspace/repo)"
        echo "    [#2:]displayed name of repository"
        echo "Executes \"git push\" on the given git-repository."

        return
    fi

    # check parameter
    if [ $# -lt 1 ] || [ $# -gt 2 ]; then
        echo "$FUNCNAME: Parameter Error."
        $FUNCNAME --help
        return -1
    fi
    if [ $# -lt 2 ]; then
        REPO_NAME="$(basename "$1")"
    else
        REPO_NAME="$2"
    fi

    # display repo name
    echo ""
    echo "### $REPO_NAME ###"

    # check local path
    if [ ! -d "$1" ]; then
        echo "\"$1\" does not exist"
        return -2
    fi
    if [ ! -d "$1/.git" ]; then
        echo "\"$1\" is not a git repository"
        return -3
    fi

    # git push
    echo "cd \"$1\" && git push --tags"
    (cd "$1" && git push --tags)
}

function _repo_git_st() {


    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME <local_path> [<disp_name>]"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME needs 1-2 parameters"
        echo "     #1: locale path (e.g. /home/egon/workspace/repo)"
        echo "    [#2:]displayed name of repository"
        echo "Executes \"git push\" on the given git-repository."

        return
    fi

    # check parameter
    if [ $# -lt 1 ] || [ $# -gt 2 ]; then
        echo "$FUNCNAME: Parameter Error."
        $FUNCNAME --help
        return -1
    fi
    if [ $# -lt 2 ]; then
        REPO_NAME="$(basename "$1")"
    else
        REPO_NAME="$2"
    fi

    # check local path
    if [ ! -d "$1" ] || [ ! -d "$1/.git" ]; then
        return
    fi

    # git status
    echo ""
    echo "### $REPO_NAME ###"
    (cd "$1" && git status -u)
}

function repo_git_diff() {

    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME [<local_path>]"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME needs 0-1 parameters"
        echo "    [#1:]locale path (e.g. /home/egon/workspace/)"
        echo "Shows difference between current und previous version"
        echo "of the given git-repository."
        echo "For visualization, \"meld\" will be executed."

        return
    fi

    # check parameter
    if [ $# -gt 1 ]; then
        echo "$FUNCNAME: Parameter Error."
        $FUNCNAME --help
        return -1
    fi

    _repo_diff "git" $1
}
# 2018 09 10 old source code (instead of using _repo_diff):
#     if [ $# -lt 1 ]; then
#         local_path="."
#     else
#         local_path="$1"
#     fi
#
#     # check local path
#     error_temp="$(cd "$local_path" && \
#       git config --list --local  2>&1 > /dev/null)"
#     if [ "$error_temp" != "" ] ; then
#         echo "$FUNCNAME: Directory is not a git-repository."
#
#         return -2
#     fi
#
#     # check for changes
#     info_temp="$(cd "$local_path" && git status --short 2>&1)"
#     if [ "$info_temp" != "" ] ; then
#         echo "$FUNCNAME: There are uncommitted changes."
#         echo ""
#         (cd "$local_path" && git status)
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
#     dir_temp=~/temp/git_diff/
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
#     (cd "$local_path" && git checkout HEAD^)
#         # check for errors
#         if [ $? -ne 0 ]; then
#             echo "$FUNCNAME: Stopping because of an error."
#             return -1;
#         fi
#
#     # compare versions
#     meld  "$local_path" "$dir_temp"


#***************************[local repos]*************************************
# 2018 05 03

function _repo_additional_dirs_load() {

    if [ $# -gt 0 ]; then
        echo "Error - _repo_additional_dirs_load needs 0 parameters"

        return -1
    fi

    if [ ! -e "$REPO_FILE_ADDITIONAL_GIT" ]; then
        export REPO_ADDITIONAL_DIRS_GIT=()
        return
    fi

    # load paths
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

    if [ $# -gt 1 ]; then
        echo "Error - repo_additional_dirs_add needs 0-1 parameter"
        echo "       [#1:]locale path"

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
    path="$(cd "$path"; pwd)/"

    # set up as git repo
    if [ ! -d "$path.git" ]; then
        git init "$path"
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

    if [ $# -gt 0 ]; then
        echo "Error - repo_additional_dirs_status needs 0 parameters"

        return -1
    fi

    # check status of additional dirs
    for i in "${!REPO_ADDITIONAL_DIRS_GIT[@]}"; do
        _repo_git_st "${REPO_ADDITIONAL_DIRS_GIT[$i]}/"
    done
}
