#!/bin/bash

#***************************[git global]**************************************

#***************************[pull]
# 2024 01 01

function repo_pull_all() {

    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME [--no-filter]"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME has 1 option and needs no parameters"
        echo "    [--no-filter] gives full output (disables filter)"
        echo "Executes \"git pull\" on all available repositories."

        return
    fi

    # check option '--no-filter'
    if [ "$1" == "--no-filter" ]; then
        shift
    else
        $FUNCNAME "--no-filter" "$@" | _repo_filter_git_grep
        return $?
    fi

    # check parameter
    if [ $# -gt 0 ]; then
        echo "$FUNCNAME: Parameter Error."
        $FUNCNAME --help
        return -1
    fi

    # update all repos
    git_pull_bash_repo
    git_pull_bash_config
    git_pull_bash_network
    git_pull_bash_multimedia
    git_pull_bash_file
    git_pull_bash_master_simple
    git_pull_bash_master_server
    git_pull_bash_roboag


    git_pull_roboag_lib
    git_pull_roboag_pololu

    git_pull_roboag_roberta_connector
    git_pull_roboag_roberta_server
    git_pull_roboag_mblock_arduino
    git_pull_roboag_mblock_mbot

    git_pull_roboag_doc_robolib
    git_pull_roboag_doc_install

    git_pull_roboag_eagle_config
    git_pull_roboag_eagle_keplerboard
    git_pull_roboag_eagle_xbee
    git_pull_roboag_eagle_logic
    git_pull_roboag_eagle_vtgMon

    git_pull_roboag_projects_display
    git_pull_roboag_projects_gluecksrad
    git_pull_roboag_projects_3pi
    git_pull_roboag_projects_roboter

    git_pull_roboag_php_filebrowser


    git_pull_robosax_eagle_spielfeld
    git_pull_robosax_eagle_anzeige
    git_pull_robosax_eagle_licht
    git_pull_robosax_avr_spielfeld
    git_pull_robosax_avr_omnibot
    git_pull_robosax_projects_spielfeld
    git_pull_robosax_projects_ledbox
    git_pull_robosax_php_punkte
    git_pull_robosax_php_punkte_old
    git_pull_robosax_doc_punkte
    git_pull_robosax_php_web_frame


    git_pull_eagle_dmx_driver

    git_pull_hardware_trailer
    git_pull_hardware_audio_home
    git_pull_hardware_dmx_opa
    git_pull_hardware_dimmer

    git_pull_cpp_avr_downloader


    git_pull_doc_server_online
    git_pull_doc_server_local
}

#***************************[status]
# 2024 01 01

function repo_status_all() {


    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME [--no-filter]"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME has 1 option and needs no parameters"
        echo "    [--no-filter] gives full output (disables filter)"
        echo "Executes \"git status\" on all available repositories."

        return
    fi

    # check option '--no-filter'
    if [ "$1" == "--no-filter" ]; then
        shift
    else
        $FUNCNAME "--no-filter" "$@" | \
          _repo_filter_git_grep | _repo_filter_git_awk
        return $?
    fi

    # check parameter
    if [ $# -gt 0 ]; then
        echo "$FUNCNAME: Parameter Error."
        $FUNCNAME --help
        return -1
    fi

    # return status of all repos
    git_status_bash_repo
    git_status_bash_config
    git_status_bash_network
    git_status_bash_multimedia
    git_status_bash_file
    git_status_bash_master_simple
    git_status_bash_master_server
    git_status_bash_roboag


    git_status_roboag_lib
    git_status_roboag_pololu

    git_status_roboag_doc_robolib
    git_status_roboag_doc_install

    git_status_roboag_roberta_connector
    git_status_roboag_roberta_server
    git_status_roboag_mblock_arduino
    git_status_roboag_mblock_mbot

    git_status_roboag_eagle_config
    git_status_roboag_eagle_keplerboard
    git_status_roboag_eagle_xbee
    git_status_roboag_eagle_logic
    git_status_roboag_eagle_vtgMon

    git_status_roboag_projects_display
    git_status_roboag_projects_gluecksrad
    git_status_roboag_projects_3pi
    git_status_roboag_projects_roboter
    git_status_roboag_php_filebrowser


    git_status_robosax_eagle_spielfeld
    git_status_robosax_eagle_licht
    git_status_robosax_eagle_anzeige
    git_status_robosax_avr_spielfeld
    git_status_robosax_avr_omnibot
    git_status_robosax_projects_spielfeld
    git_status_robosax_projects_ledbox
    git_status_robosax_php_punkte
    git_status_robosax_php_punkte_old
    git_status_robosax_doc_punkte
    git_status_robosax_php_web_frame


    git_status_eagle_dmx_driver

    git_status_hardware_trailer
    git_status_hardware_audio_home
    git_status_hardware_dmx_opa
    git_status_hardware_dimmer

    git_status_cpp_avr_downloader


    git_status_doc_server_online
    git_status_doc_server_local


    repo_additional_dirs_status --no-filter
}

#***************************[clone]
# 2020 06 19

function repo_clone_bash() {

    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME needs 0-1 parameters"
        echo "Clones all repositories containing bash scripts."

        return
    fi

    # check parameter
    if [ $# -gt 0 ]; then
        echo "$FUNCNAME: Parameter Error."
        $FUNCNAME --help
        return -1
    fi

    # clone all
    git_clone_bash_master_simple
    git_clone_bash_repo
    git_clone_bash_config
    git_clone_bash_network
    git_clone_bash_multimedia
    git_clone_bash_file
}

# 2023 02 03
function repo_clone_roboag() {

    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME needs 0-1 parameters"
        echo "Clones all repositories containing RoboAG data."

        return
    fi

    # check parameter
    if [ $# -gt 0 ]; then
        echo "$FUNCNAME: Parameter Error."
        $FUNCNAME --help
        return -1
    fi

    # clone all
    git_clone_bash_roboag
    git_clone_roboag_doc_install

    git_clone_roboag_lib
    git_clone_roboag_doc_robolib
    git_clone_roboag_pololu

    git_clone_roboag_roberta_connector
    git_clone_roboag_roberta_server
    git_clone_roboag_mblock_arduino
    git_clone_roboag_mblock_mbot

    git_clone_roboag_eagle_config
    git_clone_roboag_eagle_keplerboard
    git_clone_roboag_eagle_xbee
    git_clone_roboag_eagle_logic
    git_clone_roboag_eagle_vtgMon

    git_clone_roboag_projects_display
    git_clone_roboag_projects_gluecksrad
    git_clone_roboag_projects_3pi
    git_clone_roboag_projects_roboter

    git_clone_roboag_php_filebrowser
}

# 2020 06 27
function repo_clone_robosax() {

    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME needs 0-1 parameters"
        echo "Clones all repositories containing RoboSAX data."

        return
    fi

    # check parameter
    if [ $# -gt 0 ]; then
        echo "$FUNCNAME: Parameter Error."
        $FUNCNAME --help
        return -1
    fi

    # clone all
    git_clone_robosax_eagle_spielfeld
    git_clone_robosax_eagle_licht
    git_clone_robosax_eagle_anzeige

    git_clone_robosax_avr_spielfeld
    git_clone_robosax_avr_omnibot

    git_clone_robosax_projects_spielfeld
    git_clone_robosax_projects_ledbox

    git_clone_robosax_php_punkte
    git_clone_robosax_doc_punkte
    git_clone_robosax_php_punkte_old
    git_clone_robosax_php_web_frame
}

# 2024 01 01
function repo_clone_peter() {

    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME needs 0-1 parameters"
        echo "Clones all repositories of Peter."

        return
    fi

    # check parameter
    if [ $# -gt 0 ]; then
        echo "$FUNCNAME: Parameter Error."
        $FUNCNAME --help
        return -1
    fi

    # clone all
    git_clone_eagle_dmx_driver

    git_clone_hardware_trailer
    git_clone_hardware_audio_home
    git_clone_hardware_dmx_opa
    git_clone_hardware_dimmer

    git_clone_doc_server_online
    git_clone_doc_server_local
}

# 2024 01 01
function repo_clone_all() {

    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME [--yes]"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME needs 0-1 parameters"
        echo "    [#1:]flag to skip question (--yes)"
        echo "Clones all avaiable repositories."

        return
    fi

    # check parameter
    if [ $# -gt 1 ]; then
        echo "$FUNCNAME: Parameter Error."
        $FUNCNAME --help
        return -1
    fi

    # ask user if continuing
    echo "Cloning all avaiable repositories."
    echo "Do you wish to continue ? (No/yes)"
    if [ "$1" != "-y" ] && [ "$1" != "--yes" ]; then
        read answer
    else
        echo "<auto answer \"yes\">"
        answer="yes"
    fi
    if [ "$answer" != "y" ] && [ "$answer" != "Y" ] && \
      [ "$answer" != "yes" ]; then

        echo "$FUNCNAME: Aborted."
        return
    fi

    # clone all repos
    repo_clone_bash
    repo_clone_roboag
    repo_clone_robosax
    repo_clone_peter

    git_clone_bash_master_server

    git_clone_cpp_avr_downloader
}
