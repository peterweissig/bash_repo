#!/bin/bash

#***************************[removed proaut ros]******************************
# 2023 11 20

temp_path="${REPO_PATH_WORKSPACE}ros/"
    if [ ! -d "$temp_path" ]; then
        temp_path="/opt/roboag/repos/ros/"
    fi
if [ -d "$temp_path" ]; then
    echo "warning: Removed ROS repos from list on 20.11.2023!"
    echo "  You should (re)move the repos accordingly:"
    echo "    $ rm -rf \"${temp_path}\""
fi



#***************************[changed structure of c++ project]****************
# 2022 02 19

# check for cpp main project
if [ -d "${REPO_CPP_PATH}.git" ]; then
    echo "warning: Changed structure of cpp project repo on 18.02.2022!"
    echo "  You should (re)move the files accordingly:"
    if [ ! -d "${REPO_CPP_AVR_DOWNLOADER}" ]; then
        echo "    $ git_clone_cpp_avr_downloader"
    fi
    files=".gitignore LICENSE.md Makefile"
    for file in $files; do
        if [ -f "${REPO_CPP_PATH}${file}" ]; then
            echo "    $ rm \"${REPO_CPP_PATH}${file}\""
        fi
    done
    echo "    $ rm -rf \"${REPO_CPP_PATH}.git\""
fi

# check for cpp main project
if [ "$REPO_MODE" == "roboag" ]; then
    temp_path="${REPO_CPP_PATH}Peter/"
    if [ -d "$temp_path" ]; then
        echo "warning: Changed structure of cpp project repo on 18.02.2022!"
        echo "  You should (re)move the files accordingly:"
        if [ ! -d "${REPO_CPP_AVR_DOWNLOADER}" ]; then
            echo "    $ git_clone_cpp_avr_downloader"
        fi
        echo "    $ rm -rf \"${temp_path}\""
    fi
fi



#***************************[fixed structure of doc]**************************
# 2021 01 05

# check for robolib
temp_path="${REPO_PATH_WORKSPACE}robosax/doc/punkte/"
if [ -d "$temp_path" ] && \
  [ "${REPO_DOC_PATH}" == "${REPO_ROBOAG_DOC_PATH}" ]; then
    echo "warning: Fixed path of robosax/doc/punkte/ on 05.01.2021!"
    echo "  You should move the files accordingly:"
    if [ ! -d "$REPO_ROBOSAX_DOC_PATH" ]; then
        echo "    $ mkdir -p \"$REPO_ROBOSAX_DOC_PATH\""
    fi
    echo "    $ mv \"$temp_path\" \"$REPO_ROBOSAX_DOC_PUNKTE\""
    echo "    $ rmdir \"$(dirname "$temp_path")\""
    echo "    $ rmdir \"$(dirname "$(dirname "$temp_path")")\""
fi



#***************************[changed structure of doc]************************
# 2020 09 27

# check for robolib
temp_path="${REPO_DOC_PATH}robolib/"
if [ -d "$temp_path" ] && \
  [ "${REPO_DOC_PATH}" != "${REPO_ROBOAG_DOC_PATH}" ]; then
    echo "warning: Folder structure of doc/ changed on 27.09.2020!"
    echo "  You should move the files accordingly:"
    echo "    $ mkdir -p \"$REPO_ROBOAG_DOC_PATH\""
    echo "    $ mv \"$temp_path\" \"$REPO_ROBOAG_DOC_ROBOLIB\""
fi

# check for punkte
temp_path="${REPO_DOC_PATH}punkte/"
if [ -d "$temp_path" ]; then
    echo "warning: Folder structure of doc/ changed on 27.09.2020!"
    echo "  You should move the files accordingly:"
    echo "    $ mkdir -p \"$REPO_ROBOSAX_DOC_PATH\""
    echo "    $ mv \"$temp_path\" \"$REPO_ROBOSAX_DOC_PUNKTE\""
fi



#***************************[changed structure of robo]***********************
# 2020 09 16

# check for robosax
temp_path="${REPO_PATH_WORKSPACE}robo/robosax/"
if [ ! -d "$temp_path" ]; then
    temp_path="${REPO_ROBOAG_PATH}robosax/"
fi
if [ -d "$temp_path" ]; then
    echo "warning: Folder structure of robosax changed on 16.09.2020!"
    echo "  Please check the following folders for changes and remove them."
    folder_list="$(ls "$temp_path")"
    for folder in $folder_list; do
        temp="${temp_path}${folder}"
        echo "      $ cd ${temp} && git status"
    done
    echo ""
    echo "    You may check out the repos again using"
    echo "      $ git_clone_robosax_..."
    echo "    or simply"
    echo "      $ repo_clone_robosax"
fi

# check for roboag (internal - 1)
temp_path="${REPO_PATH_WORKSPACE}robo/roboag/filebrowser_php"
if [ ! -d "$temp_path" ]; then
    temp_path="${REPO_ROBOAG_PATH}roboag/filebrowser_php"
fi
if [ ! -d "$temp_path" ]; then
    temp_path="${REPO_ROBOAG_PROJECTS_PATH}filebrowser_php"
fi
if [ -d "$temp_path" ]; then
    temp="$(dirname "$(dirname "${temp_path}")")/php/"
    echo "warning: Repo filebrowser moved to its own subfolder on 16.09.2020!"
    echo "    $ mkdir \"$temp\""
    echo "    $ mv \"$temp_path\" \"${temp}filebrowser\""
fi

# check for roboag (internal - 2)
temp_path="${REPO_PATH_WORKSPACE}robo/roboag/"
if [ ! -d "$temp_path" ]; then
    temp_path="${REPO_ROBOAG_PATH}roboag/"
fi
if [ -d "$temp_path" ]; then
    temp="$(dirname "${temp_path}")/projects/"
    echo "warning: Folder structure of roboag changed on 16.09.2020!"
    echo "  (.../robo/ --> .../projects/)"
    echo "  Please rename the following subfolder:"
    echo "      $ mv \"$temp_path\" \"$temp\""
fi

# check for roboag (name)
temp_path="${REPO_PATH_WORKSPACE}robo/"
if [ -d "$temp_path" ]; then
    echo "warning: Folder of roboag was renamed on 16.09.2020!"
    echo "  (robo/ --> roboag/)"
    echo ""
    echo "  Please rename the folder:"
    echo "      $ mv \"$temp_path\" \"$REPO_ROBOAG_PATH\""
fi



#***************************[renaming doc/imscp-server]***********************
# 2019 12 23

# path
temp_imscp_server_old="${REPO_DOC_SERVER_PATH}imscp/"
if [ "$REPO_DOC_SERVER_PATH" != "" ] && [ -d "$temp_imscp_server_old" ]; then

    echo "warning: Repo doc/server/imscp was renamed on 23.12.2019!"
    echo "  You should move the files accordingly:"
    echo "    $ mkdir -p \"$REPO_DOC_SERVER_PATH\""
    echo "    $ mv \"$temp_imscp_server_old\" \"$REPO_DOC_SERVER_ONLINE\""
    echo ""
fi

export REPO_DOC_SERVER_IMSCP=("${REPO_DOC_SERVER_ONLINE[@]}")



#***************************[adding bash/master]******************************
# 2018 11 30

# path
temp_roboag_old="${REPO_BASH_PATH}roboag/"
if [ "$REPO_BASH_PATH" != "" ] && [ -d "$temp_roboag_old" ]; then

    echo "warning: Folder structure of repo has changed on 30.11.2018!"
    echo "  bash/roboag is expected to be bash/master/roboag"
    echo "  You should move the files accordingly:"
    echo "    $ mkdir -p \"$REPO_BASH_MASTER_PATH\""
    echo "    $ mv \"$temp_roboag_old\" \"$REPO_BASH_MASTER_ROBOAG\""
    echo "  You may also need to adjust your bashrc file:"
    echo "    $ nano ~/.bashrc"
    echo ""
fi

export REPO_BASH_ROBOAG=("${REPO_BASH_MASTER_ROBOAG[@]}")
