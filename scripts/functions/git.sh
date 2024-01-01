#!/bin/bash

#***************************[_repo_git_clone]*********************************
# 2020 01 28

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

    # load parameters
    PARAM_PATH="$1"
    PARAM_SERVER="$2"
    if [ $# -lt 3 ]; then
        REPO_NAME="$(basename "$PARAM_PATH")"
    else
        REPO_NAME="$3"
    fi

    # display repo name
    echo ""
    echo "###g $REPO_NAME ###"

    # clone repo
    echo "git clone \"$PARAM_SERVER\" \"$PARAM_PATH\""
    git clone "$PARAM_SERVER" "$PARAM_PATH"
}



#***************************[_repo_git_pull]**********************************
# 2024 01 01
function _repo_git_pull_release() {
    _repo_git_pull "$1" "$2" release
}

function _repo_git_pull_quiet() {
    _repo_git_pull "$1" "$2" quiet
}

# 2023 11 18
function _repo_git_pull() {

    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME <local_path> [<disp_name>] [<mode>]"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME needs 1-3 parameters"
        echo "     #1: locale path (e.g. /home/egon/workspace/repo)"
        echo "    [#2:]displayed name of repository"
        echo "    [#3:]mode of pulling"
        echo "         \"\"         just 'git pull --tags' (default)"
        echo "         \"quiet\"    prune, but skip statistics & tags"
        echo "         \"release\"  always force quiet reset"
        echo "Executes \"git pull\" on the given git-repository."

        return
    fi

    # check parameter
    if [ $# -lt 1 ] || [ $# -gt 3 ]; then
        echo "$FUNCNAME: Parameter Error."
        $FUNCNAME --help
        return -1
    fi

    # load parameters
    PARAM_PATH="$1"
    REPO_NAME="$2"
    if [ "$REPO_NAME" == "" ]; then
        REPO_NAME="$(basename "$PARAM_PATH")"
    fi
    PARAM_MODE="$3"
    if [ "$PARAM_MODE" != "" ] &&
       [ "$PARAM_MODE" != "quiet" ] &&
       [ "$PARAM_MODE" != "release" ]; then
        echo "$FUNCNAME: Parameter Error - mode \"$PARAM_MODE\" unknown."
        $FUNCNAME --help
        return -2
    fi

    # check local path
    if [ ! -d "$PARAM_PATH" ] || [ ! -d "${PARAM_PATH}/.git" ]; then
        return
    fi

    # display repo name
    REPO_NAME_HINT=""
    if [ "$PARAM_MODE" != "" ]; then
        REPO_NAME_HINT=" (${PARAM_MODE}!)"
    fi
    echo "###g ${REPO_NAME}${REPO_NAME_HINT} ###"

    # git pull
    if [ "$PARAM_MODE" == "quiet" ]; then
        (cd "$PARAM_PATH" && git pull --no-stat --prune)
    elif [ "$PARAM_MODE" == "release" ]; then
        (cd "$PARAM_PATH" && \
         git fetch && git reset --quiet --hard @{upstream})
    else
        (cd "$PARAM_PATH" && git pull --tags)
    fi
}



#***************************[_repo_git_push]**********************************
# 2020 01 28

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

    # load parameters
    PARAM_PATH="$1"
    if [ $# -lt 2 ]; then
        REPO_NAME="$(basename "$PARAM_PATH")"
    else
        REPO_NAME="$2"
    fi

    # display repo name
    echo ""
    echo "###g $REPO_NAME ###"

    # check local path
    if [ ! -d "$PARAM_PATH" ]; then
        echo "\"$PARAM_PATH\" does not exist"
        return -2
    fi
    if [ ! -d "${PARAM_PATH}/.git" ]; then
        echo "\"$PARAM_PATH\" is not a git repository"
        return -3
    fi

    # git push
    echo "cd \"$PARAM_PATH\" && git push --tags"
    (cd "$PARAM_PATH" && git push --tags)
}



#***************************[_repo_git_st]************************************
# 2020 01 28

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

    # load parameters
    PARAM_PATH="$1"
    if [ $# -lt 2 ]; then
        REPO_NAME="$(basename "$PARAM_PATH")"
    else
        REPO_NAME="$2"
    fi

    # check local path
    if [ ! -d "$PARAM_PATH" ] || [ ! -d "${PARAM_PATH}/.git" ]; then
        return
    fi

    # display repo name
    echo "###g $REPO_NAME ###"

    # git status
    (cd "$1" && git status --untracked-files)
}



#***************************[git_diff]****************************************
# 2019 08 23

function repo_git_diff() {

  echo "repo_git_diff is deprecated - please use git_diff"
  git_diff "$@"
}

function git_diff() {

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

    if [ $# -gt 0 ]; then
        _repo_diff "git" "$1"
    else
        _repo_diff "git"
    fi
}



#***************************[git_config_set_ssh]******************************
# 2019 08 21

function git_config_set_ssh() {

    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME [<local_path>]"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME needs 0-1 parameters"
        echo "    [#1:]locale path (e.g. /home/egon/workspace/)"
        echo "Changes the remote url of the selected repository to ssh-mode."

        return
    fi

    # check parameter
    if [ $# -gt 1 ]; then
        echo "$FUNCNAME: Parameter Error."
        $FUNCNAME --help
        return -1
    fi
    if [ $# -gt 0 ]; then
        if [ ! -d "$1" ]; then
            echo "$FUNCNAME: \"$1\" does not exist."
            return -1
        fi
    fi

    # git store current url
    if [ $# -gt 0 ]; then
        readarray -t lines <<< "$(cd "$1" && git remote -v)"
    else
        readarray -t lines <<< "$(git remote -v)"
    fi
    if [ $? -ne 0 ]; then
        echo "$FUNCNAME: Stopping because of an error."
        return -1
    fi

    # do simple checks
    if [ "${#lines[*]}" -lt 2 ]; then
        echo "$FUNCNAME: There is no remote url."
        echo "  check with \"git remote -v\""
        return -1
    fi

    frontless="${lines##*https://}"
    if [ "${#frontless}" -lt 1 ] || \
      [ "${#frontless}" -eq "${#lines}" ]; then
        echo "$FUNCNAME: Current url does not include \"https://\"."
        return -1
    fi

    temp="${frontless##*.git}"
    if [ "${#temp}" -lt 1 ] || [ "${#temp}" -eq "${#frontless}" ]; then
        echo "$FUNCNAME: Current url does not include \".git\"."
        return -1
    fi
    url_base="${frontless:0:(${#frontless}-${#temp})}"

    # create new url
    url_new="git@${url_base/\//\:}"

    # set new url
    echo "git remote set-url origin ${url_new}"
    if [ $# -gt 0 ]; then
        (cd "$1" && git remote set-url origin "${url_new}")
    else
        git remote set-url origin "${url_new}"
    fi

}



#***************************[git_log]*****************************************

# 2021 03 12
function git_log() {

    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME [<base-branch>]"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME needs 0-1 parameters"
        echo "    [#1:] name of base branch (e.g. master)"
        echo "Calls git log with a nicer formatting."
        echo "If a base branch is given, only the difference is shown."

        return
    fi

    # check parameter
    if [ $# -gt 1 ]; then
        echo "$FUNCNAME: Parameter Error."
        $FUNCNAME --help
        return -1
    fi
    param_branch=""
    if [ $# -gt 0 ]; then
        param_branch="$1.."
    fi

    # script based on https://stackoverflow.com/questions/13965391
    #   (how-do-i-see-the-commit-differences-between-branches-in-git)
    COLORS="'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset'"
    git log --graph --abbrev-commit --date=relative \
      --pretty=format:"$COLORS"  $param_branch
}
