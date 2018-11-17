#!/bin/bash

#***************************[needed external variables]***********************
# 2018 04 01

# REPO_PATH_WORKSPACE


#***************************[paths and files]*********************************
# 2018 11 17

export REPO_PATH_REPO="$(cd "$(dirname "${BASH_SOURCE}")" && pwd )/"
export REPO_PATH_CONFIG="${REPO_PATH_REPO}config/"
export REPO_FILE_ADDITIONAL_GIT="${REPO_PATH_CONFIG}git.txt"


#***************************[source]******************************************
# 2018 11 17

. ${REPO_PATH_REPO}scripts/functions_other.sh
. ${REPO_PATH_REPO}scripts/functions_git.sh
. ${REPO_PATH_REPO}scripts/functions_svn.sh
. ${REPO_PATH_REPO}scripts/help.sh

. ${REPO_PATH_REPO}scripts/list.sh
. ${REPO_PATH_REPO}scripts/alias.sh

_repo_additional_dirs_load
