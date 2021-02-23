#!/bin/bash

#***************************[workspace]**************************************

# 2021 01 16
function repo_workspace_check() {

    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME needs 0-1 parameters"
        echo "    [#1:]workspace (default ${REPO_PATH_WORKSPACE})"
        echo "Searches the whole workspace for git or svn repositories and"
        echo "prints their status."

        return
    fi

    # check parameter
    if [ $# -gt 1 ]; then
        echo "$FUNCNAME: Parameter Error."
        $FUNCNAME --help
        return -1
    fi

    param_workspace="$1"
    if [ "$param_workspace" == "" ]; then
        param_workspace="${REPO_PATH_WORKSPACE}"
    fi
    if [ ! -d "$param_workspace" ]; then
        echo "Workspace \"$param_workspace\" does not exist."
        return -2
    fi

    # get currently defines repos
    exports="$(export)"

    # git repos
    echo "unknown git repos:"
    readarray -t repos <<< "$(file_search --only-dirs --no-subdirs \
      .git "$param_workspace")"
    if [ $? -ne 0 ]; then
        echo "  error"
        unset repos
    fi

    # check against variables in export
    for i in ${!repos[@]}; do
        repo="${repos[$i]}"
        if [ "$repo" == "" ]; then continue; fi

        repo="$(dirname "${repo}")/"
        if echo "$exports" | grep --quiet "\"$repo\""; then
            continue
        fi
        echo "  $repo"
    done

    # svn repos
    echo ""
    echo "unknown svn repos:"
    readarray -t repos <<< "$(file_search --only-dirs --no-subdirs \
      .svn "$param_workspace")"
    if [ $? -ne 0 ]; then
        echo "  error"
        unset repos
    fi

    # check against variables in export
    for i in ${!repos[@]}; do
        repo="${repos[$i]}"
        if [ "$repo" == "" ]; then continue; fi

        repo="$(dirname "${repo}")/"
        if echo "$exports" | grep --quiet "\"$repo\""; then
            continue
        fi
        echo "  $repo"
    done
}

# 2021 02 23
function repo_workspace_status() {

    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME [<workspace>]"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME needs 0-1 parameters"
        echo "    [#1:]workspace (default ${REPO_PATH_WORKSPACE})"
        echo "Searches the whole workspace for non-nested git or svn"
        echo "repositories and prints their status."

        return
    fi

    # check parameter
    if [ $# -gt 1 ]; then
        echo "$FUNCNAME: Parameter Error."
        $FUNCNAME --help
        return -1
    fi

    param_workspace="$1"
    if [ "$param_workspace" == "" ]; then
        param_workspace="${REPO_PATH_WORKSPACE}"
    fi
    if [ ! -d "$param_workspace" ]; then
        echo "Workspace \"$param_workspace\" does not exist."
        return -2
    fi

    # find all repos
    readarray -t git_repos <<< "$(file_search --only-dirs --no-subdirs \
      .git "$param_workspace")"
    if [ $? -ne 0 ]; then
        unset git_repos
    fi
    readarray -t svn_repos <<< "$(file_search --only-dirs --no-subdirs \
      .svn "$param_workspace")"
    if [ $? -ne 0 ]; then
        unset svn_repos
    fi

    # print status
    for i in ${!git_repos[@]}; do
        repo="${git_repos[$i]}"
        if [ "$repo" == "" ]; then continue; fi

        repo="$(dirname "${repo}")/"
        _repo_git_st "$repo" "$repo"
    done
    for i in ${!svn_repos[@]}; do
        repo="${svn_repos[$i]}"
        if [ "$repo" == "" ]; then continue; fi

        repo="$(dirname "${repo}")/"
        _repo_svn_st "$repo" "$repo"
    done
}

# 2021 02 23
function repo_workspace_update() {

    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME [<workspace>]"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME needs 0-1 parameters"
        echo "    [#1:]workspace (default ${REPO_PATH_WORKSPACE})"
        echo "Searches the whole workspace for git or svn repositories and"
        echo "updates/pulls them."

        return
    fi

    # check parameter
    if [ $# -gt 1 ]; then
        echo "$FUNCNAME: Parameter Error."
        $FUNCNAME --help
        return -1
    fi

    param_workspace="$1"
    if [ "$param_workspace" == "" ]; then
        param_workspace="${REPO_PATH_WORKSPACE}"
    fi
    if [ ! -d "$param_workspace" ]; then
        echo "Workspace \"$param_workspace\" does not exist."
        return -2
    fi

    # find all repos
    readarray -t git_repos <<< "$(file_search --only-dirs .git \
      "$param_workspace")"
    if [ $? -ne 0 ]; then
        unset git_repos
    fi
    readarray -t svn_repos <<< "$(file_search --only-dirs .svn \
      "$param_workspace")"
    if [ $? -ne 0 ]; then
        unset svn_repos
    fi

    # print status
    for i in ${!git_repos[@]}; do
        repo="${git_repos[$i]}"
        if [ "$repo" == "" ]; then continue; fi

        repo="$(dirname "${repo}")/"
        _repo_git_pull "$repo" "$repo"
    done
    for i in ${!svn_repos[@]}; do
        repo="${svn_repos[$i]}"
        if [ "$repo" == "" ]; then continue; fi

        repo="$(dirname "${repo}")/"
        _repo_svn_up "$repo" "$repo"
    done
}
