#***************************[svn]*********************************************
# 2018 01 05
function _repo_svn_co() {
    if [ $# -ne 3 ]; then
        echo "Error - _repo_svn_co needs 2-3 parameters"
        echo "        #1: locale path"
        echo "        #2: server address"
        echo "       [#3:]user name"

        return -1
    fi

    if [ ! -d "$1" ]; then
        echo "mkdir -p \"${1}\""
        mkdir -p "${1}"
    else
        if [ -d "${1}/.svn" ]; then
            echo "svn repository \"$1\" is already checked out"
            return
        fi
    fi

    if [ $# -lt 3 ]; then
        echo "svn checkout \"$2\" \"$1\""
        svn checkout "$2" "$1"
    else
        echo "svn checkout --username \"$3\" \"$2\" \"$1\""
        svn checkout --username "$3" "$2" "$1"
    fi
}

function _repo_svn_up() {
    if [ $# -ne 1 ]; then
        echo "Error - _repo_svn_up needs 1 parameter"
        echo "        #1: locale path"

        return -1
    fi

    if [ -d "$1" ] && [ -d "$1/.svn" ]; then
        svn update "$1"
    fi
}

function _repo_svn_st() {
    if [ $# -ne 1 ]; then
        echo "Error - _repo_svn_st needs 1 parameter"
        echo "        #1: locale path"

        return -1
    fi

    if [ -d "$1" ] && [ -d "$1/.svn" ]; then
        svn stat "$1"
    fi
}

function repo_svn_diff() {

    error_temp="$(svn info >> /dev/null)"
    if [ "$error_temp" != "" ] ; then
        echo -n "Error - repo_svn_diff needs to be called within"
        echo " a svn repository"

        return -1
    fi

    info_temp="$(svn stat -q)"
    if [ "$info_temp" != "" ] ; then
        echo "Error - there are not committed changes"
        echo ""
        svn stat

        return -2
    fi

    dir_temp=~/temp/svn_diff/
    if [ -e "$dir_temp" ]; then
        echo "Remove old compare data"
        rm -rf "$dir_temp"
    fi
    mkdir -p "$dir_temp"

    cp --recursive .  "$dir_temp"

    svn up -r PREV

    meld .  "$dir_temp"
}

#***************************[git]*********************************************
# 2018 01 05

function _repo_git_clone() {

    if [ $# -lt 2 ] || [ $# -gt 3 ]; then
        echo "Error - _repo_git_clone needs 2-3 parameter"
        echo "        #1: locale path"
        echo "        #2: remote url"
        echo "       [#3:]optional name of repository"

        return
    fi

    if [ $# -lt 3 ]; then
        REPO_NAME="$(basename "$1")"
    else
        REPO_NAME="$3"
    fi

    echo ""
    echo "### $REPO_NAME ###"

    echo "git clone \"$2\" \"$1\""
    git clone "$2" "$1"
}

function _repo_git_pull() {

    if [ $# -lt 1 ] || [ $# -gt 2 ]; then
        echo "Error - _repo_git_pull needs 1-2 parameter"
        echo "        #1: locale path"
        echo "       [#2:]optional name of repository"

        return -1
    fi

    if [ ! -d "$1" ] || [ ! -d "$1/.git" ]; then
        return
    fi

    if [ $# -lt 2 ]; then
        REPO_NAME="$(basename "$1")"
    else
        REPO_NAME="$2"
    fi

    echo "### pulling $REPO_NAME ###"
    GIT_DIR="$1.git" GIT_WORK_TREE="$1" git pull --tags
}

function _repo_git_push() {

    if [ $# -lt 1 ] || [ $# -gt 2 ]; then
        echo "Error - _repo_git_push needs 1-2 parameters"
        echo "        #1: locale path"
        echo "       [#2:]optional name of repository"

        return -1
    fi

    if [ $# -lt 2 ]; then
        REPO_NAME="$(basename "$1")"
    else
        REPO_NAME="$2"
    fi
    echo ""
    echo "### $REPO_NAME ###"

    if [ ! -d "$1" ]; then
        echo "\"$1\" does not exist"
        return -2
    fi
    if [ ! -d "$1/.git" ]; then
        echo "\"$1\" is not a git repository"
        return -3
    fi

    echo "GIT_DIR=\"$1.git\" GIT_WORK_TREE=\"$1\" git push --tags"
    GIT_DIR="$1.git" GIT_WORK_TREE="$1" git push --tags
}

function _repo_git_st() {

    if [ $# -lt 1 ] || [ $# -gt 2 ]; then
        echo "Error - _repo_git_st needs 1-2 parameter"
        echo "        #1: locale path"
        echo "       [#2:]optional name of repository"

        return -1
    fi

    if [ ! -d "$1" ] || [ ! -d "$1/.git" ]; then
        return
    fi

    if [ $# -lt 2 ]; then
        REPO_NAME="$(basename "$1")"
    else
        REPO_NAME="$2"
    fi

    temp_text="$(GIT_DIR="$1.git" GIT_WORK_TREE="$1" git status -u)"
    if [ "$temp_text" != "" ]; then
        echo ""
        echo "### $REPO_NAME ###"
        echo "$temp_text"
    fi
}
