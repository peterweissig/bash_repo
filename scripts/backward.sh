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

#***************************[renaming doc/imscp-server]***********************
# 2019 12 23

# path
temp_imscp_server_old="${REPO_DOC_SERVER_PATH}imscp/"
if [ "$REPO_DOC_SERVER_PATH" != "" ] && [ -d "$temp_imscp_server_old" ]; then

    echo "warning: Repo doc/server/imscp was renamed on 23.12.2019!"
    echo "  You should move the files accordingly:"
    echo "    \$ mkdir -p \"$REPO_DOC_SERVER_PATH\""
    echo "    \$ mv \"$temp_imscp_server_old\" \"$REPO_DOC_SERVER_ONLINE\""
    echo ""
fi

export REPO_DOC_SERVER_IMSCP=("${REPO_DOC_SERVER_ONLINE[@]}")

#***************************[removed repo odometry]***************************
# 2020 06 19

if [ "$REPO_ROS_PROAUT_ODOMETRY" != "" ] && \
  [ -d "$REPO_ROS_PROAUT_ODOMETRY" ]; then

    echo "warning: Repo odometry_pa was removed on 18.06.2020!"
    echo "  It was always empty and will never be used."
    echo "  You should manually remove the files:"
    echo "    \$ git_status_ros_odometry"
    echo "    \$ rm -rf \"${REPO_ROS_PROAUT_ODOMETRY}\""
    echo ""
fi
