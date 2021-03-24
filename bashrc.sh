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
# 2021 03 24

# current path
export REPO_PATH="$(realpath "$(dirname "${BASH_SOURCE}")" )/"

# load (alternative) data paths
source "${REPO_PATH}scripts/functions/bash_data.sh"
_repo_bash_data_dirs_load

# load and check data dir
if [ "$REPO_PATH_CONFIG" == "" ]; then
    REPO_PATH_CONFIG="$(_repo_bash_data_dirs_get --mkdir "repo" \
      "${REPO_PATH}config/")"
fi
_repo_bash_data_dirs_check --rmdir "$REPO_PATH_CONFIG" \
  "repo" "${REPO_PATH}config/"

# additional (local) git dirs
if [ "$REPO_FILE_ADDITIONAL_GIT" == "" ]; then
    export REPO_FILE_ADDITIONAL_GIT="${REPO_PATH_CONFIG}git.txt"
fi



#***************************[source]******************************************
# 2021 03 24

source "${REPO_PATH}scripts/functions/additional_dirs.sh"
source "${REPO_PATH}scripts/functions/diff.sh"
source "${REPO_PATH}scripts/functions/git.sh"
source "${REPO_PATH}scripts/functions/svn.sh"
source "${REPO_PATH}scripts/functions/filter.sh"
source "${REPO_PATH}scripts/functions/workspace.sh"
source "${REPO_PATH}scripts/help.sh"
source "${REPO_PATH}scripts/help_overview.sh"

source "${REPO_PATH}scripts/list_other.sh"
source "${REPO_PATH}scripts/list.sh"
source "${REPO_PATH}scripts/alias.sh"

source "${REPO_PATH}scripts/backward.sh"


_repo_additional_dirs_load
