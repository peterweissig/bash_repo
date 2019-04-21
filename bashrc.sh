#!/bin/bash

#***************************[check if already sourced]************************
# 2018 11 30

if [ "$SOURCED_BASH_REPO" != "" ]; then

    return
    exit
fi

export SOURCED_BASH_REPO=1


#***************************[needed external variables]***********************
# 2019 04 21

# REPO_PATH_WORKSPACE
if [ "$REPO_PATH_WORKSPACE" == "" ]; then

    echo "Error sourcing \"repo\": \$REPO_PATH_WORKSPACE is not set"
    return -1;
fi

if [ ! -d "$REPO_PATH_WORKSPACE" ]; then

    echo "Error sourcing \"repo\": \$REPO_PATH_WORKSPACE does not exist"
    return -1;
fi


#***************************[paths and files]*********************************
# 2018 11 17

export REPO_PATH_REPO="$(cd "$(dirname "${BASH_SOURCE}")" && pwd )/"
export REPO_PATH_CONFIG="${REPO_PATH_REPO}config/"
export REPO_FILE_ADDITIONAL_GIT="${REPO_PATH_CONFIG}git.txt"


#***************************[source]******************************************
# 2018 11 30

. ${REPO_PATH_REPO}scripts/functions_other.sh
. ${REPO_PATH_REPO}scripts/functions_git.sh
. ${REPO_PATH_REPO}scripts/functions_svn.sh
. ${REPO_PATH_REPO}scripts/help.sh

. ${REPO_PATH_REPO}scripts/list.sh
. ${REPO_PATH_REPO}scripts/alias.sh

. ${REPO_PATH_REPO}scripts/backward.sh

_repo_additional_dirs_load
