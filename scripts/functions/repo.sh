#!/bin/bash

#***************************[repo function wrapper]**************************
# 2024 01 25

function _repo_add() {

    # print help
    if [ "$1" == "-h" ]; then
        echo -n "$FUNCNAME [--release | --quiet] <local_path> <url> "
        echo "[<function_name> [<disp_name>]]"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME has 2 options and needs 2-4 parameters"
        echo "    [--quiet]   uses _repo_git_pull_quiet   for pulling"
        echo "    [--release] uses _repo_git_pull_release for pulling"
        echo "     #1: locale path"
        echo "         (e.g. /home/egon/workspace/bash/repo)"
        echo "     #2: url"
        echo "         (e.g. https://github.com/pw/bash_repo.git)"
        echo "    [#3:]function name of repository"
        echo "         defaults to last two directories separated by underscore"
        echo "         (e.g. bash_repo)"
        echo "    [#4:]displayed name of repository"
        echo "         defaults to last two directories (e.g. bash/repo)"
        echo -n "Creates the necessary functions for doing the default "
        echo "git operations:"
        echo " - clone  (e.g. git_clone_bash_repo )"
        echo " - pull   (e.g. git_pull_bash_repo  )"
        echo " - status (e.g. git_status_bash_repo)"

        return
    fi

    # init variables
    option_quiet=0
    option_release=0
    param_path=""
    param_url=""
    param_func_name=""
    param_disp_name=""

    # check and get parameter
    params_ok=0
    if [ $# -ge 2 ] && [ $# -le 5 ]; then
        params_ok=1
        while true; do
            if [ "$1" == "--quiet" ]; then
                option_quiet=1
                if [ option_release -eq 1 ]; then
                    echo "$FUNCNAME: Found options --quiet and --release"
                    return -2
                fi
                shift
                continue
            elif [ "$1" == "--release" ]; then
                option_release=1
                if [ $option_quiet -eq 1 ]; then
                    echo "$FUNCNAME: Found options --quiet and --release"
                    return -2
                fi
                shift
                continue
            elif [[ "$1" =~ ^-- ]]; then
                echo "$FUNCNAME: Unknown option \"$1\"."
                return -1
            else
                break
            fi
        done
        if [ $# -lt 1 ] || [ $# -gt 4 ]; then
            params_ok=0
        else
          param_path="$1"
          param_url="$2"
          param_func_name="$3"
          param_disp_name="$4"
        fi
    fi
    if [ $params_ok -ne 1 ]; then
        echo "$FUNCNAME: Parameter Error."
        $FUNCNAME --help
        return -1
    fi

    dir1="$(basename "$param_path")"
    dir2="$(basename "$(dirname "$param_path")")"
    if [ "$param_func_name" == "" ]; then
        param_func_name="${dir2}_${dir1}"
    fi
    if [ "$param_disp_name" == "" ]; then
        param_disp_name="${dir2}/${dir1}"
    fi

    # export url & path
    eval "export REPO_${param_func_name^^}=( \
      \"${param_path}\" \"${param_url}\")"

    # add functions
    eval "function git_clone_${param_func_name} () {
        _repo_git_clone \"$param_path\" \"$param_url\" \"$param_disp_name\"
    }"

    eval "function git_status_${param_func_name}() {
        _repo_git_st \"$param_path\" \"$param_disp_name\"
    }"

    pull_function="_repo_git_pull"
    if [ $option_quiet -eq 1 ]; then
        pull_function="${pull_function}_quiet"
    elif [ $option_release -eq 1 ]; then
        pull_function="${pull_function}_release"
    fi

    eval "function git_pull_${param_func_name} () {
        $pull_function \"$param_path\" \"$param_disp_name\"
    }"
}
