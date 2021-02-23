#!/bin/bash

#***************************[bash]*******************************************
# 2021 02 18

# repositories functions (peter)
alias git_clone_bash_repo="_repo_git_clone \
  ${REPO_BASH_REPO[*]} bash/repo"
alias git_pull_bash_repo="_repo_git_pull \
  \"${REPO_BASH_REPO[0]}\" bash/repo"
alias git_status_bash_repo="_repo_git_st \
  \"${REPO_BASH_REPO[0]}\" bash/repo"

# config functions (peter)
alias git_clone_bash_config="_repo_git_clone \
  ${REPO_BASH_CONFIG[*]} bash/config"
alias git_pull_bash_config="_repo_git_pull \
  \"${REPO_BASH_CONFIG[0]}\" bash/config"
alias git_status_bash_config="_repo_git_st \
  \"${REPO_BASH_CONFIG[0]}\" bash/config"

# network functions (peter)
alias git_clone_bash_network="_repo_git_clone \
  ${REPO_BASH_NETWORK[*]} bash/network"
alias git_pull_bash_network="_repo_git_pull \
  \"${REPO_BASH_NETWORK[0]}\" bash/network"
alias git_status_bash_network="_repo_git_st \
  \"${REPO_BASH_NETWORK[0]}\" bash/network"

# multimedia functions (peter)
alias git_clone_bash_multimedia="_repo_git_clone \
  ${REPO_BASH_MULTIMEDIA[*]} bash/multimedia"
alias git_pull_bash_multimedia="_repo_git_pull \
  \"${REPO_BASH_MULTIMEDIA[0]}\" bash/multimedia"
alias git_status_bash_multimedia="_repo_git_st \
  \"${REPO_BASH_MULTIMEDIA[0]}\" bash/multimedia"

# file functions (peter)
alias git_clone_bash_file="_repo_git_clone \
  ${REPO_BASH_FILE[*]} bash/file"
alias git_pull_bash_file="_repo_git_pull \
  \"${REPO_BASH_FILE[0]}\" bash/file"
alias git_status_bash_file="_repo_git_st \
  \"${REPO_BASH_FILE[0]}\" bash/file"

#***************************[bash/master]
# 2021 02 18

# master simple (peter)
alias git_clone_bash_master_simple="_repo_git_clone \
  ${REPO_BASH_MASTER_BASHONLY[*]} master/simple"
alias git_pull_bash_master_simple="_repo_git_pull \
  \"${REPO_BASH_MASTER_BASHONLY[0]}\" master/simple"
alias git_status_bash_master_simple="_repo_git_st \
  \"${REPO_BASH_MASTER_BASHONLY[0]}\" master/simple"

# master server (peter)
alias git_clone_bash_master_server="_repo_git_clone \
  ${REPO_BASH_MASTER_SERVER[*]} master/server"
alias git_pull_bash_master_server="_repo_git_pull \
  \"${REPO_BASH_MASTER_SERVER[0]}\" master/server"
alias git_status_bash_master_server="_repo_git_st \
  \"${REPO_BASH_MASTER_SERVER[0]}\" master/server"

# roboag (roboag)
alias git_clone_bash_roboag="_repo_git_clone \
  ${REPO_BASH_MASTER_ROBOAG[*]} master/roboag"
alias git_pull_bash_roboag="_repo_git_pull \
  \"${REPO_BASH_MASTER_ROBOAG[0]}\" master/roboag"
alias git_status_bash_roboag="_repo_git_st \
  \"${REPO_BASH_MASTER_ROBOAG[0]}\" master/roboag"



#***************************[roboag]******************************************
# 2021 02 18

# robolib (roboag)
alias git_clone_roboag_lib="_repo_git_clone \
  ${REPO_ROBOAG_LIB[*]} roboag/robolib"
alias git_pull_roboag_lib="_repo_git_pull \
  \"${REPO_ROBOAG_LIB[0]}\" roboag/robolib"
alias git_status_roboag_lib="_repo_git_st \
  \"${REPO_ROBOAG_LIB[0]}\" roboag/robolib"

# pololu (extern)
alias git_clone_roboag_pololu="_repo_git_clone ${REPO_ROBOAG_POLOLU[*]}"
alias git_pull_roboag_pololu="_repo_git_pull \"${REPO_ROBOAG_POLOLU[0]}\""
alias git_status_roboag_pololu="_repo_git_st \"${REPO_ROBOAG_POLOLU[0]}\""

#***************************[roboag/doc]
# 2021 02 18

# robolib as release-repo (roboag)
alias git_clone_roboag_doc_robolib="_repo_git_clone \
  ${REPO_ROBOAG_DOC_ROBOLIB[*]} doc/robolib"
alias git_pull_roboag_doc_robolib="_repo_git_pull_release \
  \"${REPO_ROBOAG_DOC_ROBOLIB[0]}\" doc/robolib"
alias git_status_roboag_doc_robolib="_repo_git_st \
  \"${REPO_ROBOAG_DOC_ROBOLIB[0]}\" doc/robolib"

# install (roboag)
alias git_clone_roboag_doc_install="_repo_git_clone \
  ${REPO_ROBOAG_DOC_INSTALL[*]} doc/install"
alias git_pull_roboag_doc_install="_repo_git_pull_release \
  \"${REPO_ROBOAG_DOC_INSTALL[0]}\" doc/install"
alias git_status_roboag_doc_install="_repo_git_st \
  \"${REPO_ROBOAG_DOC_INSTALL[0]}\" doc/install"

#***************************[roboag/eagle]
# 2021 02 18

# config (roboag)
alias git_clone_roboag_eagle_config="_repo_git_clone \
  ${REPO_ROBOAG_EAGLE_CONFIG[*]} eagle/config"
alias git_pull_roboag_eagle_config="_repo_git_pull \
  \"${REPO_ROBOAG_EAGLE_CONFIG[0]}\" eagle/config"
alias git_status_roboag_eagle_config="_repo_git_st \
  \"${REPO_ROBOAG_EAGLE_CONFIG[0]}\" eagle/config"

# keplerboard (roboag)
alias git_clone_roboag_eagle_keplerboard="_repo_git_clone \
  ${REPO_ROBOAG_EAGLE_KEPLERBOARD[*]} eagle/keplerboard"
alias git_pull_roboag_eagle_keplerboard="_repo_git_pull \
  \"${REPO_ROBOAG_EAGLE_KEPLERBOARD[0]}\" eagle/keplerboard"
alias git_status_roboag_eagle_keplerboard="_repo_git_st \
  \"${REPO_ROBOAG_EAGLE_KEPLERBOARD[0]}\" eagle/keplerboard"

# xbee (roboag)
alias git_clone_roboag_eagle_xbee="_repo_git_clone \
  ${REPO_ROBOAG_EAGLE_XBEE[*]} eagle/xbee"
alias git_pull_roboag_eagle_xbee="_repo_git_pull \
  \"${REPO_ROBOAG_EAGLE_XBEE[0]}\" eagle/xbee"
alias git_status_roboag_eagle_xbee="_repo_git_st \
  \"${REPO_ROBOAG_EAGLE_XBEE[0]}\" eagle/xbee"

# logic (roboag)
alias git_clone_roboag_eagle_logic="_repo_git_clone \
  ${REPO_ROBOAG_EAGLE_LOGIC[*]} eagle/logic"
alias git_pull_roboag_eagle_logic="_repo_git_pull \
  \"${REPO_ROBOAG_EAGLE_LOGIC[0]}\" eagle/logic"
alias git_status_roboag_eagle_logic="_repo_git_st \
  \"${REPO_ROBOAG_EAGLE_LOGIC[0]}\" eagle/logic"

# voltage monitor (roboag)
alias git_clone_roboag_eagle_vtgMon="_repo_git_clone \
  ${REPO_ROBOAG_EAGLE_VTGMON[*]} eagle/vtgmon"
alias git_pull_roboag_eagle_vtgMon="_repo_git_pull \
  \"${REPO_ROBOAG_EAGLE_VTGMON[0]}\" eagle/vtgmon"
alias git_status_roboag_eagle_vtgMon="_repo_git_st \
  \"${REPO_ROBOAG_EAGLE_VTGMON[0]}\" eagle/vtgmon"

#***************************[roboag/projects]
# 2021 02 18

# display (roboag)
alias git_clone_roboag_projects_display="_repo_git_clone \
  ${REPO_ROBOAG_PROJECTS_DISPLAY[*]}"
alias git_pull_roboag_projects_display="_repo_git_pull \
  \"${REPO_ROBOAG_PROJECTS_DISPLAY[0]}\""
alias git_status_roboag_projects_display="_repo_git_st \
  \"${REPO_ROBOAG_PROJECTS_DISPLAY[0]}\""

# gluecksrad (roboag)
alias git_clone_roboag_projects_gluecksrad="_repo_git_clone \
  ${REPO_ROBOAG_PROJECTS_GLUECKSRAD[*]}"
alias git_pull_roboag_projects_gluecksrad="_repo_git_pull \
  \"${REPO_ROBOAG_PROJECTS_GLUECKSRAD[0]}\""
alias git_status_roboag_projects_gluecksrad="_repo_git_st \
  \"${REPO_ROBOAG_PROJECTS_GLUECKSRAD[0]}\""

# 3pi modification (roboag)
alias git_clone_roboag_projects_3pi="_repo_git_clone \
  ${REPO_ROBOAG_PROJECTS_3PI[*]}"
alias git_pull_roboag_projects_3pi="_repo_git_pull \
  \"${REPO_ROBOAG_PROJECTS_3PI[0]}\""
alias git_status_roboag_projects_3pi="_repo_git_st \
  \"${REPO_ROBOAG_PROJECTS_3PI[0]}\""

# robots (roboag)
alias git_clone_roboag_projects_roboter="_repo_git_clone \
  ${REPO_ROBOAG_PROJECTS_ROBOTER[*]}"
alias git_pull_roboag_projects_roboter="_repo_git_pull \
  \"${REPO_ROBOAG_PROJECTS_ROBOTER[0]}\""
alias git_status_roboag_projects_roboter="_repo_git_st \
  \"${REPO_ROBOAG_PROJECTS_ROBOTER[0]}\""

#***************************[roboag/php]
# 2021 02 18

# filebrowser (roboag)
alias git_clone_roboag_php_filebrowser="_repo_git_clone \
  ${REPO_ROBOAG_PHP_FILEBROWSER[*]} php/filebrowser"
alias git_pull_roboag_php_filebrowser="_repo_git_pull \
  \"${REPO_ROBOAG_PHP_FILEBROWSER[0]}\" php/filebrowser"
alias git_status_roboag_php_filebrowser="_repo_git_st \
  \"${REPO_ROBOAG_PHP_FILEBROWSER[0]}\" php/filebrowser"



#***************************[robosax]*****************************************

#***************************[robosax/doc]
# 2021 02 18

# punkte as release-repo (robosax)
alias git_clone_robosax_doc_punkte="_repo_git_clone \
  ${REPO_ROBOSAX_DOC_PUNKTE[*]} doc/punkte"
alias git_pull_robosax_doc_punkte="_repo_git_pull_release \
  \"${REPO_ROBOSAX_DOC_PUNKTE[0]}\" doc/punkte"
alias git_status_robosax_doc_punkte="_repo_git_st \
  \"${REPO_ROBOSAX_DOC_PUNKTE[0]}\" doc/punkte"

#***************************[robosax/eagle]
# 2021 02 18

# spielfeld circuit (robosax)
alias git_clone_robosax_eagle_spielfeld="_repo_git_clone \
  ${REPO_ROBOSAX_EAGLE_SPIELFELD[*]} eagle/spielfeld"
alias git_pull_robosax_eagle_spielfeld="_repo_git_pull \
  \"${REPO_ROBOSAX_EAGLE_SPIELFELD[0]}\" eagle/spielfeld"
alias git_status_robosax_eagle_spielfeld="_repo_git_st \
  \"${REPO_ROBOSAX_EAGLE_SPIELFELD[0]}\" eagle/spielfeld"

# licht circuit (robosax)
alias git_clone_robosax_eagle_licht="_repo_git_clone \
  ${REPO_ROBOSAX_EAGLE_LICHT[*]} eagle/licht"
alias git_pull_robosax_eagle_licht="_repo_git_pull \
  \"${REPO_ROBOSAX_EAGLE_LICHT[0]}\" eagle/licht"
alias git_status_robosax_eagle_licht="_repo_git_st \
  \"${REPO_ROBOSAX_EAGLE_LICHT[0]}\" eagle/licht"

# anzeige circuit (robosax)
alias git_clone_robosax_eagle_anzeige="_repo_git_clone \
  ${REPO_ROBOSAX_EAGLE_ANZEIGE[*]} eagle/anzeige"
alias git_pull_robosax_eagle_anzeige="_repo_git_pull \
  \"${REPO_ROBOSAX_EAGLE_ANZEIGE[0]}\" eagle/anzeige"
alias git_status_robosax_eagle_anzeige="_repo_git_st \
  \"${REPO_ROBOSAX_EAGLE_ANZEIGE[0]}\" eagle/anzeige"

#***************************[robosax/avr]
# 2021 02 18

# spielfeld software (robosax)
alias git_clone_robosax_avr_spielfeld="_repo_git_clone \
  ${REPO_ROBOSAX_AVR_SPIELFELD[*]} avr/spielfeld"
alias git_pull_robosax_avr_spielfeld="_repo_git_pull \
  \"${REPO_ROBOSAX_AVR_SPIELFELD[0]}\" avr/spielfeld"
alias git_status_robosax_avr_spielfeld="_repo_git_st \
  \"${REPO_ROBOSAX_AVR_SPIELFELD[0]}\" avr/spielfeld"

# omnibot (robosax)
alias git_clone_robosax_avr_omnibot="_repo_git_clone \
  ${REPO_ROBOSAX_AVR_OMNIBOT[*]} avr/omnibot"
alias git_pull_robosax_avr_omnibot="_repo_git_pull \
  \"${REPO_ROBOSAX_AVR_OMNIBOT[0]}\" avr/omnibot"
alias git_status_robosax_avr_omnibot="_repo_git_st \
  \"${REPO_ROBOSAX_AVR_OMNIBOT[0]}\" avr/omnibot"

#***************************[robosax/projects]
# 2021 02 18

# spielfeld drawings (robosax)
alias git_clone_robosax_projects_spielfeld="_repo_git_clone \
  ${REPO_ROBOSAX_PROJECTS_SPIELFELD[*]} cad/spielfeld"
alias git_pull_robosax_projects_spielfeld="_repo_git_pull \
  \"${REPO_ROBOSAX_PROJECTS_SPIELFELD[0]}\" cad/spielfeld"
alias git_status_robosax_projects_spielfeld="_repo_git_st \
  \"${REPO_ROBOSAX_PROJECTS_SPIELFELD[0]}\" cad/spielfeld"

# led-box (fabian) - original repo is from fabian geissler
alias git_clone_robosax_projects_ledbox="_repo_git_clone \
  ${REPO_ROBOSAX_PROJECTS_LEDBOX[*]} robosax/ledbox"
alias git_pull_robosax_projects_ledbox="_repo_git_pull \
  \"${REPO_ROBOSAX_PROJECTS_LEDBOX[0]}\" robosax/ledbox"
alias git_status_robosax_projects_ledbox="_repo_git_st \
  \"${REPO_ROBOSAX_PROJECTS_LEDBOX[0]}\" robosax/ledbox"

#***************************[robosax/php]
# 2021 02 18

# punkte (robosax)
alias git_clone_robosax_php_punkte="_repo_git_clone \
  ${REPO_ROBOSAX_PHP_PUNKTE[*]} php/punkte"
alias git_pull_robosax_php_punkte="_repo_git_pull \
  \"${REPO_ROBOSAX_PHP_PUNKTE[0]}\" php/punkte"
alias git_status_robosax_php_punkte="_repo_git_st \
  \"${REPO_ROBOSAX_PHP_PUNKTE[0]}\" php/punkte"

alias git_clone_robosax_php_punkte_old="_repo_git_clone \
  ${REPO_ROBOSAX_PHP_PUNKTE_OLD[*]} php/punkte_old"
alias git_pull_robosax_php_punkte_old="_repo_git_pull \
  \"${REPO_ROBOSAX_PHP_PUNKTE_OLD[0]}\" php/punkte_old"
alias git_status_robosax_php_punkte_old="_repo_git_st \
  \"${REPO_ROBOSAX_PHP_PUNKTE_OLD[0]}\" php/punkte_old"

# webseite (robosax)
alias git_clone_robosax_php_web_frame="_repo_git_clone \
  ${REPO_ROBOSAX_PHP_WEB_FRAME[*]} php/webframe"
alias git_pull_robosax_php_web_frame="_repo_git_pull \
  \"${REPO_ROBOSAX_PHP_WEB_FRAME[0]}\" php/webframe"
alias git_status_robosax_php_web_frame="_repo_git_st \
  \"${REPO_ROBOSAX_PHP_WEB_FRAME[0]}\" php/webframe"



#***************************[projects]****************************************

#***************************[projects/eagle]
# 2021 02 18

# dmx-driver (peter)
alias git_clone_eagle_dmx_driver="_repo_git_clone \
  ${REPO_EAGLE_DMX_DRIVER[*]} peter/dmx"
alias git_pull_eagle_dmx_driver="_repo_git_pull \
  \"${REPO_EAGLE_DMX_DRIVER[0]}\" peter/dmx"
alias git_status_eagle_dmx_driver="_repo_git_st \
  \"${REPO_EAGLE_DMX_DRIVER[0]}\" peter/dmx"

#***************************[projects/hardware]
# 2021 02 18

# trailer (peter)
alias git_clone_hardware_trailer="_repo_git_clone \
  ${REPO_HARDWARE_TRAILER[*]} peter/trailer"
alias git_pull_hardware_trailer="_repo_git_pull \
  \"${REPO_HARDWARE_TRAILER[0]}\" peter/trailer"
alias git_status_hardware_trailer="_repo_git_st \
  \"${REPO_HARDWARE_TRAILER[0]}\" peter/trailer"

# audio system (peter)
alias git_clone_hardware_audio_home="_repo_git_clone \
  ${REPO_HARDWARE_AUDIO_HOME[*]} peter/audio"
alias git_pull_hardware_audio_home="_repo_git_pull \
  \"${REPO_HARDWARE_AUDIO_HOME[0]}\" peter/audio"
alias git_status_hardware_audio_home="_repo_git_st \
  \"${REPO_HARDWARE_AUDIO_HOME[0]}\" peter/audio"

# opa (peter)
alias git_clone_hardware_dmx_opa="_repo_git_clone \
  ${REPO_HARDWARE_DMX_OPA[*]} peter/opa"
alias git_pull_hardware_dmx_opa="_repo_git_pull \
  \"${REPO_HARDWARE_DMX_OPA[0]}\" peter/opa"
alias git_status_hardware_dmx_opa="_repo_git_st \
  \"${REPO_HARDWARE_DMX_OPA[0]}\" peter/opa"

# dimmer (peter)
alias git_clone_hardware_dimmer="_repo_git_clone \
  ${REPO_HARDWARE_DIMMER[*]} peter/dimmer"
alias git_pull_hardware_dimmer="_repo_git_pull \
  \"${REPO_HARDWARE_DIMMER[0]}\" peter/dimmer"
alias git_status_hardware_dimmer="_repo_git_st \
  \"${REPO_HARDWARE_DIMMER[0]}\" peter/dimmer"

#***************************[projects/c++]
# 2021 02 18

# all
alias git_pull_cpp="if [ -d \"${REPO_CPP_MAIN[0]}\" ]; then \
  bash -c 'cd \"${REPO_CPP_MAIN[0]}\" && make update'; fi"
alias git_status_cpp="if [ -d \"${REPO_CPP_MAIN[0]}\" ]; then \
  bash -c 'cd \"${REPO_CPP_MAIN[0]}\" && make status'; fi"

# main (peter)
alias git_clone_cpp_main="_repo_git_clone ${REPO_CPP_MAIN[*]}"
alias git_pull_cpp_main="_repo_git_pull \"${REPO_CPP_MAIN[0]}\""
alias git_status_cpp_main="_repo_git_st \"${REPO_CPP_MAIN[0]}\""

# basic (peter)
alias git_clone_cpp_basic="_repo_git_clone ${REPO_CPP_BASIC[*]}"
alias git_pull_cpp_basic="_repo_git_pull \"${REPO_CPP_BASIC[0]}\""
alias git_status_cpp_basic="_repo_git_st \"${REPO_CPP_BASIC[0]}\""

# comport (peter)
alias git_clone_cpp_comport="_repo_git_clone ${REPO_CPP_COMPORT[*]}"
alias git_pull_cpp_comport="_repo_git_pull \"${REPO_CPP_COMPORT[0]}\""
alias git_status_cpp_comport="_repo_git_st \"${REPO_CPP_COMPORT[0]}\""

# file (peter)
alias git_clone_cpp_file="_repo_git_clone ${REPO_CPP_FILE[*]}"
alias git_pull_cpp_file="_repo_git_pull \"${REPO_CPP_FILE[0]}\""
alias git_status_cpp_file="_repo_git_st \"${REPO_CPP_FILE[0]}\""

# avr-downloader (peter)
alias git_clone_cpp_downloader="_repo_git_clone ${REPO_CPP_DOWNLOADER[*]}"
alias git_pull_cpp_downloader="_repo_git_pull \"${REPO_CPP_DOWNLOADER[0]}\""
alias git_status_cpp_downloader="_repo_git_st \"${REPO_CPP_DOWNLOADER[0]}\""

# xbee-tool (peter)
alias git_clone_cpp_xbee="_repo_git_clone ${REPO_CPP_XBEE[*]}"
alias git_pull_cpp_xbee="_repo_git_pull \"${REPO_CPP_XBEE[0]}\""
alias git_status_cpp_xbee="_repo_git_st \"${REPO_CPP_XBEE[0]}\""



#***************************[doc]*********************************************
# 2021 02 18

# online-server (peter)
alias git_clone_doc_server_online="_repo_git_clone \
  ${REPO_DOC_SERVER_ONLINE[*]} \"doc/server (online)\""
alias git_pull_doc_server_online="_repo_git_pull \
  \"${REPO_DOC_SERVER_ONLINE[0]}\" \"doc/server (online)\""
alias git_status_doc_server_online="_repo_git_st \
\"${REPO_DOC_SERVER_ONLINE[0]}\" \"doc/server (online)\""

# local server (peter)
alias git_clone_doc_server_local="_repo_git_clone \
  ${REPO_DOC_SERVER_LOCAL[*]} \"doc/server (local)\""
alias git_pull_doc_server_local="_repo_git_pull \
  \"${REPO_DOC_SERVER_LOCAL[0]}\" \"doc/server (local)\""
alias git_status_doc_server_local="_repo_git_st \
\"${REPO_DOC_SERVER_LOCAL[0]}\" \"doc/server (local)\""



#***************************[ros]*********************************************

#***************************[ros-tools-pa]
# 2021 02 18

# parameter (TUC-ProAut)
alias git_clone_ros_parameter="_repo_git_clone \
  ${REPO_ROS_PROAUT_PARAMETER[*]} ros/parameter_pa"
alias git_pull_ros_parameter="_repo_git_pull \
  \"${REPO_ROS_PROAUT_PARAMETER[0]}\" ros/parameter_pa"
alias git_status_ros_parameter="_repo_git_st \
  \"${REPO_ROS_PROAUT_PARAMETER[0]}\" ros/parameter_pa"

# pcdfilter (TUC-ProAut)
alias git_clone_ros_pcdfilter="_repo_git_clone \
  ${REPO_ROS_PROAUT_PCDFILTER[*]} ros/pcdfilter_pa"
alias git_pull_ros_pcdfilter="_repo_git_pull \
  \"${REPO_ROS_PROAUT_PCDFILTER[0]}\" ros/pcdfilter_pa"
alias git_status_ros_pcdfilter="_repo_git_st \
  \"${REPO_ROS_PROAUT_PCDFILTER[0]}\""

# octomap (TUC-ProAut)
alias git_clone_ros_octomap="_repo_git_clone \
  ${REPO_ROS_PROAUT_OCTOMAP[*]} ros/octomap_pa"
alias git_pull_ros_octomap="_repo_git_pull \
  \"${REPO_ROS_PROAUT_OCTOMAP[0]}\" ros/octomap_pa"
alias git_status_ros_octomap="_repo_git_st \
  \"${REPO_ROS_PROAUT_OCTOMAP[0]}\" ros/octomap_pa"

# nearfield map (TUC-ProAut)
alias git_clone_ros_nearfieldmap="_repo_git_clone \
  ${REPO_ROS_PROAUT_NEARFIELDMAP[*]} ros/nearfieldmap_pa"
alias git_pull_ros_nearfieldmap="_repo_git_pull \
  \"${REPO_ROS_PROAUT_NEARFIELDMAP[0]}\" ros/nearfieldmap_pa"
alias git_status_ros_nearfieldmap="_repo_git_st \
  \"${REPO_ROS_PROAUT_NEARFIELDMAP[0]}\" ros/nearfieldmap_pa"

# odometry (TUC-ProAut) -- deprecated
alias git_status_ros_odometry="_repo_git_st \
  \"${REPO_ROS_PROAUT_ODOMETRY[0]}\" ros/odometry_pa"


#***************************[ros-sensors-pa]
# 2021 02 18

# radar (TUC-ProAut)
alias git_clone_ros_radar="_repo_git_clone \
  ${REPO_ROS_PROAUT_RADAR[*]} ros/radar_pa"
alias git_pull_ros_radar="_repo_git_pull \
  \"${REPO_ROS_PROAUT_RADAR[0]}\" ros/radar_pa"
alias git_status_ros_radar="_repo_git_st \
  \"${REPO_ROS_PROAUT_RADAR[0]}\" ros/radar_pa"



#***************************[git global]**************************************

#***************************[pull]
# 2021 02 23

function repo_pull_all() {

    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME [--filter]"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME has 1 option and needs no parameters"
        echo "    [--filter] simplifies the output"
        echo "Executes \"git pull\" on all available repositories."

        return
    fi

    # check option '--filter'
    if [ "$1" == "--filter" ]; then
        $FUNCNAME | _repo_filter_git_grep
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
    git_pull_roboag_doc_robolib
    git_pull_roboag_pololu

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

    git_pull_cpp


    git_pull_doc_server_online
    git_pull_doc_server_local


    git_pull_ros_parameter
    git_pull_ros_pcdfilter
    git_pull_ros_octomap
    git_pull_ros_nearfieldmap
    git_pull_ros_radar
}

#***************************[status]
# 2021 02 23

function repo_status_all() {


    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME [--filter]"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME has 1 option and needs no parameters"
        echo "    [--filter] simplifies the output"
        echo "Executes \"git status\" on all available repositories."

        return
    fi

    # check option '--filter'
    if [ "$1" == "--filter" ]; then
        $FUNCNAME | _repo_filter_git_grep | _repo_filter_git_awk
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
    git_status_roboag_doc_robolib
    git_status_roboag_pololu

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

    git_status_cpp


    git_status_doc_server_online
    git_status_doc_server_local


    git_status_ros_parameter
    git_status_ros_pcdfilter
    git_status_ros_octomap
    git_status_ros_nearfieldmap
    git_status_ros_odometry
    git_status_ros_radar


    repo_additional_dirs_status
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

# 2020 06 27
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

# 2020 06 19
function repo_clone_peter() {

    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME needs 0-1 parameters"
        echo "Clones all repositories containing ROS data."

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

# 2020 06 19
function repo_clone_ros() {

    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME needs 0-1 parameters"
        echo "Clones all repositories containing ROS data."

        return
    fi

    # check parameter
    if [ $# -gt 0 ]; then
        echo "$FUNCNAME: Parameter Error."
        $FUNCNAME --help
        return -1
    fi

    # clone all
    git_clone_ros_parameter
    git_clone_ros_pcdfilter
    git_clone_ros_octomap
    git_clone_ros_nearfieldmap

    git_clone_ros_radar
}

# 2020 06 19
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
    repo_clone_ros

    git_clone_bash_master_server

    git_clone_cpp_main
    git_clone_cpp_basic
    git_clone_cpp_file
    git_clone_cpp_comport
    git_clone_cpp_downloader
    git_clone_cpp_xbee
}
