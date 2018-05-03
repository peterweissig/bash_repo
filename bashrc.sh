#!/bin/bash

#***************************[needed external variables]***********************
# 2018 04 01

# REPO_PATH_WORKSPACE


#***************************[paths and files]*********************************
# 2018 05 03

export REPO_PATH_REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd )/"
export REPO_PATH_CONFIG="${REPO_PATH_REPO}config/"
export REPO_FILE_ADDITIONAL_GIT="${REPO_PATH_CONFIG}git.txt"


#***************************[source]******************************************
# 2018 05 03

. ${REPO_PATH_REPO}scripts/functions.sh
. ${REPO_PATH_REPO}scripts/help.sh

. ${REPO_PATH_REPO}scripts/list.sh
. ${REPO_PATH_REPO}scripts/alias.sh

_repo_additional_dirs_load
