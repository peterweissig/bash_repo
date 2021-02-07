#!/bin/bash

#***************************[load default and alternative data dirs]**********
# 2021 02 06

function _repo_bash_data_dirs_load() {

    # general data path
    data_paths=(
        "${HOME}/workspace/bash/data/"
        "${HOME}/config/${HOSTNAME,,}/"
        "${HOME}/config/${HOSTNAME}/"
        "${REPO_PATH_WORKSPACE}bash/data/"
    )

    for i in ${!data_paths[@]}; do
        # skip empty entries & non-existing paths
        if [ "${data_paths[$i]}" == "" ] || \
        [ ! -d "${data_paths[$i]}" ]; then
            unset data_paths[$i]
            continue
        fi
        # check if two paths are identical
        tmp="$(realpath "${data_paths[$i]}")"
        for j in ${!data_paths[@]}; do
            if [ $j -le $i ] || [ "${data_paths[$j]}" == "" ]; then
                continue;
            fi
            tmp2="${data_paths[$j]}"
            if [ -d "$tmp2" ] && [ "$(realpath "$tmp2")" == "$tmp" ]; then
                data_paths[$j]=""
            fi
        done
    done

    # set default path (if not already set && if it exists)
    if [ "$REPO_BASH_DATA_PATH" == "" ]; then
        # store first entry
        for i in ${!data_paths[@]}; do
            REPO_BASH_DATA_PATH="${data_paths[$i]}"
            unset data_paths[$i]
            break
        done
    fi

    # append alternatives (if any exist)
    if [ ${#data_paths[@]} -gt 0 ]; then
        REPO_BASH_DATA_PATH=(
            "$REPO_BASH_DATA_PATH"
            "${data_paths[@]}"
        )

        #echo -n "Warning sourcing \"repo\": "
        #echo "there exist alternatives to the current data path"
        #echo "  $ echo \"\${REPO_BASH_DATA_PATH[@]}\""
    fi
    unset data_paths
}



#***************************[check usage of alternative data dirs]************

# 2021 02 02
function _repo_bash_data_dirs_get() {

    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME [--mkdir] <subfolder> [<add_path>]"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME has 1 option and needs 1-2 parameters"
        echo "    [--mkdir] creates missing (sub)folders, if necessary"
        echo "     #1: subfolder of \$REPO_BASH_DATA_PATH"
        echo "    [#2:]additional path"
        echo "Returns the current data directory."

        return
    fi

    # init variables
    option_mkdir=0
    param_subfolder=""
    param_add_folder=""

    # check and get parameter
    params_ok=0
    if [ $# -ge 1 ] && [ $# -le 3 ]; then
        params_ok=1
        while true; do
            if [ "$1" == "--mkdir" ]; then
                option_mkdir=1
                shift
                continue
            elif [[ "$1" =~ ^-- ]]; then
                echo "$FUNCNAME: Unknown option \"$1\"."
                return -1
            else
                break
            fi
        done
        param_subfolder="$1"
        param_add_folder="$2"
        if [ $# -lt 1 ] || [ $# -gt 2 ]; then
            params_ok=0
        fi
    fi
    if [ $params_ok -ne 1 ]; then
        echo "$FUNCNAME: Parameter Error."
        $FUNCNAME --help
        return -1
    fi

    # init result
    result=""

    # check if DATA-PATH exists
    if [ "$REPO_BASH_DATA_PATH" != "" ]; then
        result="${REPO_BASH_DATA_PATH}${param_subfolder}"
    else
        if [ "$param_add_folder" == "" ]; then
            return -2
        fi
        result="$param_add_folder"
    fi

    # check if result is empty
    if [ "$result" == "" ]; then
        return -2
    fi

    # check if result ends in "/"
    if [ "${result: -1}" != "/" ]; then
        result="${result}/"
    fi

    # check if folder exists
    if [ ! -d "$result" ] && [ $option_mkdir -eq 1 ]; then
        (
            echo "creating data folder for \"$param_subfolder\""
            echo "  ($result)"
        ) >&2
        mkdir -p "$result"
    fi

    # print result
    echo "$result"
}

# 2021 02 02
function _repo_bash_data_dirs_check() {

    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME [--rmdir] <param_current> <subfolder> [<add_path>]"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME has 1 option and needs 2-3 parameters"
        echo "    [--rmdir] removes unused (sub)folders, if they are empty"
        echo "     #1: current path (e.g. from _repo_bash_data_dirs_get)"
        echo "     #2: subfolder of \$REPO_BASH_DATA_PATH"
        echo "    [#3:]additional path"
        echo "Checks if data is spread over several folders."
        echo "Only in case it is, some infos are printed."

        return
    fi

    # init variables
    option_rmdir=0
    param_current=""
    param_subfolder=""
    param_add_folder=""

    # check and get parameter
    params_ok=0
    if [ $# -ge 2 ] && [ $# -le 4 ]; then
        params_ok=1
        while true; do
            if [ "$1" == "--rmdir" ]; then
                option_rmdir=1
                shift
                continue
            elif [[ "$1" =~ ^-- ]]; then
                echo "$FUNCNAME: Unknown option \"$1\"."
                return -1
            else
                break
            fi
        done
        param_current="$1"
        param_subfolder="$2"
        param_add_folder="$3"
        if [ $# -lt 2 ] || [ $# -gt 3 ]; then
            params_ok=0
        fi
    fi
    if [ $params_ok -ne 1 ]; then
        echo "$FUNCNAME: Parameter Error."
        $FUNCNAME --help
        return -1
    fi

    # check if DATA-PATH exists
    if [ "$REPO_BASH_DATA_PATH" == "" ]; then
        # otherwise nothing todo
        return
    fi

    # paths
    if [ "$param_current" == "" ]; then
        return
    fi
    if [ "${param_current: -1}" != "/" ]; then
        param_current="${param_current}/"
    fi
    if [ "$param_add_folder" != "" ] && \
      [ "${param_add_folder: -1}" != "/" ]; then
        param_add_folder="${param_add_folder}/"
    fi


    paths=()
    for i in ${!REPO_BASH_DATA_PATH[@]}; do
        tmp="${REPO_BASH_DATA_PATH[$i]}"
        # skip empty entries
        if [ "$tmp" == "" ]; then continue; fi
        tmp="${tmp}${param_subfolder}"
        # check if tmp ends in "/"
        if [ "${tmp: -1}" != "/" ]; then
            tmp="${tmp}/"
        fi
        # skip current path
        if [ "$tmp" == "$param_current" ]; then continue; fi

        # append tmp to list of paths
        paths+=("$tmp")
    done
    if [ "$param_current" != "$param_add_folder" ]; then
        paths+=("$param_add_folder")
    fi

    # check if folders exist
    for i in ${!paths[@]}; do
        path="${paths[$i]}"
        # skip empty entries
        if [ "$path" == "" ]; then continue; fi
        # skip not existing folders
        if [ ! -d "$path" ]; then continue; fi
        # check if path has content
        if [ "$(ls "$path")" != "" ]; then
            echo "Found content in alternative directory of $param_subfolder"
            echo "  You should move the content to the current directory:"
            echo "  $ mv \"${path}\"* \"$param_current\""
        elif [ $option_rmdir -eq 1 ]; then
            if rmdir "$path" 2> /dev/null; then
                echo "Removing alternative directory of $param_subfolder"
                echo "  (${path})"
            fi
        fi
    done
}
