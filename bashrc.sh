#!/bin/bash

#***************************[check if already sourced]************************
# 2019 12 01

if [ "$SOURCED_BASH_REPO" != "" ]; then

    return
    exit
fi

if [ "$SOURCED_BASH_LAST" == "" ]; then
    export SOURCED_BASH_LAST=1
else
    export SOURCED_BASH_LAST="$(expr "$SOURCED_BASH_LAST" + 1)"
fi

export SOURCED_BASH_REPO="$SOURCED_BASH_LAST"



#***************************[needed external variables]***********************
# 2019 04 21

# REPO_PATH_WORKSPACE
if [ "$REPO_PATH_WORKSPACE" == "" ]; then
    echo "Error sourcing \"repo\": \$REPO_PATH_WORKSPACE is not set"
    return -1;
fi

if [ ! -d "$REPO_PATH_WORKSPACE" ]; then
    echo "Error sourcing \"repo\": path \$REPO_PATH_WORKSPACE does not exist"
    return -1;
fi



#***************************[optional external variables]*********************
# 2020 10 11

# REPO_FILE_ADDITIONAL_GIT

# REPO_BASH_DATA_PATH
if [ "$REPO_BASH_DATA_PATH" != "" ] && [ ! -d "$REPO_BASH_DATA_PATH" ]; then
    echo -n "Error sourcing \"repo\": "
    echo "path \$REPO_BASH_DATA_PATH does not exist"
fi



#***************************[paths and files]*********************************
# 2020 12 27

# current path
export REPO_PATH="$(realpath "$(dirname "${BASH_SOURCE}")" )/"

# general data path
export REPO_BASH_DATA1_PATH="${HOME}/workspace/bash/data/"
export REPO_BASH_DATA2_PATH="${HOME}/config/${HOSTNAME}/"
export REPO_BASH_DATA3_PATH="${REPO_PATH_WORKSPACE}bash/data/"

if [ "$REPO_BASH_DATA_PATH" == "" ]; then
    if [ -d "${REPO_BASH_DATA1_PATH}" ]; then
        export REPO_BASH_DATA_PATH="$REPO_BASH_DATA1_PATH"
    else
        if [ -d "${REPO_BASH_DATA2_PATH}" ]; then
            export REPO_BASH_DATA_PATH="$REPO_BASH_DATA2_PATH"
        else
            if [ -d "${REPO_BASH_DATA3_PATH}" ]; then
                export REPO_BASH_DATA_PATH="$REPO_BASH_DATA3_PATH"
            fi
        fi
    fi
fi

if [ "$REPO_FILE_ADDITIONAL_GIT" == "" ]; then
    # check if an alternative path exists
    if [ "$REPO_BASH_DATA_PATH" != "" ] && \
      [ -d "$REPO_BASH_DATA_PATH" ]; then
        export REPO_PATH_CONFIG="${REPO_BASH_DATA_PATH}repo/"
    else
        export REPO_PATH_CONFIG="${REPO_PATH}config/"
    fi

    # check if config folder exists
    if [ ! -d "$REPO_PATH_CONFIG" ]; then
        echo "creating config folder for \"repo\""
        echo "    ($REPO_PATH_CONFIG)"
        mkdir -p "$REPO_PATH_CONFIG"
    fi

    # set config filename
    export REPO_FILE_ADDITIONAL_GIT="${REPO_PATH_CONFIG}git.txt"
fi



#***************************[source]******************************************
# 2021 02 02

. ${REPO_PATH}scripts/functions/additional_dirs.sh
. ${REPO_PATH}scripts/functions/diff.sh
. ${REPO_PATH}scripts/functions/git.sh
. ${REPO_PATH}scripts/functions/svn.sh
. ${REPO_PATH}scripts/functions/workspace.sh
. ${REPO_PATH}scripts/help.sh
. ${REPO_PATH}scripts/help_overview.sh

. ${REPO_PATH}scripts/list_other.sh
. ${REPO_PATH}scripts/list.sh
. ${REPO_PATH}scripts/alias.sh

. ${REPO_PATH}scripts/backward.sh

_repo_additional_dirs_load
