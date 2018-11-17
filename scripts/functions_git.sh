#!/bin/bash

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
