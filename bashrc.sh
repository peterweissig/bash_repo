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
# 2019 04 21

# REPO_FILE_ADDITIONAL_GIT


#***************************[paths and files]*********************************
# 2019 04 21

export REPO_PATH_REPO="$(cd "$(dirname "${BASH_SOURCE}")" && pwd )/"

if [ "$REPO_FILE_ADDITIONAL_GIT" == "" ]; then
    export REPO_FILE_ADDITIONAL_GIT="${REPO_PATH_REPO}config/git.txt"
fi


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
