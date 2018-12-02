#!/bin/bash

#***************************[adding bash/master]******************************
# 2018 11 30

# path
temp_roboag_old="${REPO_BASH_PATH}roboag/"
if [ "$REPO_BASH_PATH" != "" ] && [ -d "$temp_roboag_old" ]; then

    echo "warning: Folder structure of repo has changed on 30.11.2018!"
    echo "  bash/roboag is expected to be bash/master/roboag"
    echo "  You should move the files accordingly:"
    echo "    \$ mkdir -p \"$REPO_BASH_MASTER_PATH\""
    echo "    \$ mv \"$temp_roboag_old\" \"$REPO_BASH_MASTER_ROBOAG\""
    echo "  You may also need to adjust your bashrc file:"
    echo "    \$ nano ~/.bashrc"
    echo ""
fi

export REPO_BASH_ROBOAG=("${REPO_BASH_MASTER_ROBOAG[@]}")
