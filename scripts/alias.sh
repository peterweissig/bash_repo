#!/bin/bash

#***************************[bash]*******************************************
# 2018 11 30

# repositories functions (peter)
alias git_clone_bash_repo="_repo_git_clone ${REPO_BASH_REPO[*]}"
alias git_pull_bash_repo="_repo_git_pull \"${REPO_BASH_REPO[0]}\""
alias git_push_bash_repo="_repo_git_push \"${REPO_BASH_REPO[0]}\""
alias git_status_bash_repo="_repo_git_st \"${REPO_BASH_REPO[0]}\""

# config functions (peter)
alias git_clone_bash_config="_repo_git_clone ${REPO_BASH_CONFIG[*]}"
alias git_pull_bash_config="_repo_git_pull \"${REPO_BASH_CONFIG[0]}\""
alias git_push_bash_config="_repo_git_push \"${REPO_BASH_CONFIG[0]}\""
alias git_status_bash_config="_repo_git_st \"${REPO_BASH_CONFIG[0]}\""

# network functions (peter)
alias git_clone_bash_network="_repo_git_clone ${REPO_BASH_NETWORK[*]}"
alias git_pull_bash_network="_repo_git_pull \"${REPO_BASH_NETWORK[0]}\""
alias git_push_bash_network="_repo_git_push \"${REPO_BASH_NETWORK[0]}\""
alias git_status_bash_network="_repo_git_st \"${REPO_BASH_NETWORK[0]}\""

# multimedia functions (peter)
alias git_clone_bash_multimedia="_repo_git_clone \
  ${REPO_BASH_MULTIMEDIA[*]}"
alias git_pull_bash_multimedia="_repo_git_pull \
  \"${REPO_BASH_MULTIMEDIA[0]}\""
alias git_push_bash_multimedia="_repo_git_push \
  \"${REPO_BASH_MULTIMEDIA[0]}\""
alias git_status_bash_multimedia="_repo_git_st \
  \"${REPO_BASH_MULTIMEDIA[0]}\""

# file functions (peter)
alias git_clone_bash_file="_repo_git_clone ${REPO_BASH_FILE[*]}"
alias git_pull_bash_file="_repo_git_pull \"${REPO_BASH_FILE[0]}\""
alias git_push_bash_file="_repo_git_push \"${REPO_BASH_FILE[0]}\""
alias git_status_bash_file="_repo_git_st \"${REPO_BASH_FILE[0]}\""

#***************************[bash/master]
# 2018 11 30

# master (peter)
alias git_clone_bash_master="_repo_git_clone \
  ${REPO_BASH_MASTER_BASHONLY[*]}"
alias git_pull_bash_master="_repo_git_pull \
  \"${REPO_BASH_MASTER_BASHONLY[0]}\""
alias git_push_bash_master="_repo_git_push \
  \"${REPO_BASH_MASTER_BASHONLY[0]}\""
alias git_status_bash_master="_repo_git_st \
  \"${REPO_BASH_MASTER_BASHONLY[0]}\""

# roboag (roboag)
alias git_clone_bash_roboag="_repo_git_clone \
  ${REPO_BASH_MASTER_ROBOAG[*]}"
alias git_pull_bash_roboag="_repo_git_pull \
  \"${REPO_BASH_MASTER_ROBOAG[0]}\""
alias git_push_bash_roboag="_repo_git_push \
  \"${REPO_BASH_MASTER_ROBOAG[0]}\""
alias git_status_bash_roboag="_repo_git_st \
  \"${REPO_BASH_MASTER_ROBOAG[0]}\""



#***************************[robo]*******************************************
# 2018 02 08

# robolib (roboag)
alias git_clone_robo_lib="_repo_git_clone ${REPO_ROBO_LIB[*]}"
alias git_pull_robo_lib="_repo_git_pull \"${REPO_ROBO_LIB[0]}\""
alias git_push_robo_lib="_repo_git_push \"${REPO_ROBO_LIB[0]}\""
alias git_status_robo_lib="_repo_git_st \"${REPO_ROBO_LIB[0]}\""

# pololu (extern)
alias git_clone_robo_pololu="_repo_git_clone ${REPO_ROBO_POLOLU[*]}"
alias git_pull_robo_pololu="_repo_git_pull \"${REPO_ROBO_POLOLU[0]}\""
alias git_status_robo_pololu="_repo_git_st \"${REPO_ROBO_POLOLU[0]}\""

#***************************[robo/eagle]
# 2018 02 08

# config (roboag)
alias git_clone_robo_eagle_config="_repo_git_clone \
  ${REPO_ROBO_EAGLE_CONFIG[*]}"
alias git_pull_robo_eagle_config="_repo_git_pull \
  \"${REPO_ROBO_EAGLE_CONFIG[0]}\""
alias git_push_robo_eagle_config="_repo_git_push \
  \"${REPO_ROBO_EAGLE_CONFIG[0]}\""
alias git_status_robo_eagle_config="_repo_git_st \
  \"${REPO_ROBO_EAGLE_CONFIG[0]}\""

# keplerboard (roboag)
alias git_clone_robo_eagle_keplerboard="_repo_git_clone \
  ${REPO_ROBO_EAGLE_KEPLERBOARD[*]}"
alias git_pull_robo_eagle_keplerboard="_repo_git_pull \
  \"${REPO_ROBO_EAGLE_KEPLERBOARD[0]}\""
alias git_push_robo_eagle_keplerboard="_repo_git_push \
  \"${REPO_ROBO_EAGLE_KEPLERBOARD[0]}\""
alias git_status_robo_eagle_keplerboard="_repo_git_st \
  \"${REPO_ROBO_EAGLE_KEPLERBOARD[0]}\""

# xbee (roboag)
alias git_clone_robo_eagle_xbee="_repo_git_clone \
  ${REPO_ROBO_EAGLE_XBEE[*]}"
alias git_pull_robo_eagle_xbee="_repo_git_pull \
  \"${REPO_ROBO_EAGLE_XBEE[0]}\""
alias git_push_robo_eagle_xbee="_repo_git_push \
  \"${REPO_ROBO_EAGLE_XBEE[0]}\""
alias git_status_robo_eagle_xbee="_repo_git_st \
  \"${REPO_ROBO_EAGLE_XBEE[0]}\""

# logic (roboag)
alias git_clone_robo_eagle_logic="_repo_git_clone \
  ${REPO_ROBO_EAGLE_LOGIC[*]}"
alias git_pull_robo_eagle_logic="_repo_git_pull \
  \"${REPO_ROBO_EAGLE_LOGIC[0]}\""
alias git_push_robo_eagle_logic="_repo_git_push \
  \"${REPO_ROBO_EAGLE_LOGIC[0]}\""
alias git_status_robo_eagle_logic="_repo_git_st \
  \"${REPO_ROBO_EAGLE_LOGIC[0]}\""

# voltage monitor (roboag)
alias git_clone_robo_eagle_vtgMon="_repo_git_clone \
  ${REPO_ROBO_EAGLE_VTGMON[*]}"
alias git_pull_robo_eagle_vtgMon="_repo_git_pull \
  \"${REPO_ROBO_EAGLE_VTGMON[0]}\""
alias git_push_robo_eagle_vtgMon="_repo_git_push \
  \"${REPO_ROBO_EAGLE_VTGMON[0]}\""
alias git_status_robo_eagle_vtgMon="_repo_git_st \
  \"${REPO_ROBO_EAGLE_VTGMON[0]}\""

#***************************[robo/robosax]
# 2019 06 22

# spielfeld drawings (robosax)
alias git_clone_robosax_spielfeld="_repo_git_clone \
  ${REPO_ROBOSAX_SPIELFELD[*]}"
alias git_pull_robosax_spielfeld="_repo_git_pull \
  \"${REPO_ROBOSAX_SPIELFELD[0]}\""
alias git_push_robosax_spielfeld="_repo_git_push \
  \"${REPO_ROBOSAX_SPIELFELD[0]}\""
alias git_status_robosax_spielfeld="_repo_git_st \
  \"${REPO_ROBOSAX_SPIELFELD[0]}\""

# led-box (fabian) - original repo is from fabian geissler
alias git_clone_robosax_ledbox="_repo_git_clone ${REPO_ROBOSAX_LEDBOX[*]}"
alias git_pull_robosax_ledbox="_repo_git_pull \"${REPO_ROBOSAX_LEDBOX[0]}\""
alias git_push_robosax_ledbox="_repo_git_push \"${REPO_ROBOSAX_LEDBOX[0]}\""
alias git_status_robosax_ledbox="_repo_git_st \"${REPO_ROBOSAX_LEDBOX[0]}\""

# licht-tht circuit (robosax)
alias git_clone_robosax_licht_tht="_repo_git_clone \
  ${REPO_ROBOSAX_LICHT_THT[*]}"
alias git_pull_robosax_licht_tht="_repo_git_pull \
  \"${REPO_ROBOSAX_LICHT_THT[0]}\""
alias git_push_robosax_licht_tht="_repo_git_push \
  \"${REPO_ROBOSAX_LICHT_THT[0]}\""
alias git_status_robosax_licht_tht="_repo_git_st \
  \"${REPO_ROBOSAX_LICHT_THT[0]}\""

# spielfeld-tht circuit (robosax)
alias git_clone_robosax_spielfeld_tht="_repo_git_clone \
  ${REPO_ROBOSAX_SPIELFELD_THT[*]}"
alias git_pull_robosax_spielfeld_tht="_repo_git_pull \
  \"${REPO_ROBOSAX_SPIELFELD_THT[0]}\""
alias git_push_robosax_spielfeld_tht="_repo_git_push \
  \"${REPO_ROBOSAX_SPIELFELD_THT[0]}\""
alias git_status_robosax_spielfeld_tht="_repo_git_st \
  \"${REPO_ROBOSAX_SPIELFELD_THT[0]}\""

# spielfeld-tht software (robosax)
alias git_clone_robosax_spielfeld_avr="_repo_git_clone \
  ${REPO_ROBOSAX_SPIELFELD_AVR[*]}"
alias git_pull_robosax_spielfeld_avr="_repo_git_pull \
  \"${REPO_ROBOSAX_SPIELFELD_AVR[0]}\""
alias git_push_robosax_spielfeld_avr="_repo_git_push \
  \"${REPO_ROBOSAX_SPIELFELD_AVR[0]}\""
alias git_status_robosax_spielfeld_avr="_repo_git_st \
  \"${REPO_ROBOSAX_SPIELFELD_AVR[0]}\""

# anzeige-tht circuit (robosax)
alias git_clone_robosax_anzeige_tht="_repo_git_clone \
  ${REPO_ROBOSAX_ANZEIGE_THT[*]}"
alias git_pull_robosax_anzeige_tht="_repo_git_pull \
  \"${REPO_ROBOSAX_ANZEIGE_THT[0]}\""
alias git_push_robosax_anzeige_tht="_repo_git_push \
  \"${REPO_ROBOSAX_ANZEIGE_THT[0]}\""
alias git_status_robosax_anzeige_tht="_repo_git_st \
  \"${REPO_ROBOSAX_ANZEIGE_THT[0]}\""

# punkte (robosax)
alias git_clone_robosax_points="_repo_git_clone ${REPO_ROBOSAX_POINTS[*]}"
alias git_pull_robosax_points="_repo_git_pull \"${REPO_ROBOSAX_POINTS[0]}\""
alias git_push_robosax_points="_repo_git_push \"${REPO_ROBOSAX_POINTS[0]}\""
alias git_status_robosax_points="_repo_git_st \"${REPO_ROBOSAX_POINTS[0]}\""

alias git_clone_robosax_points_old="_repo_git_clone \
  ${REPO_ROBOSAX_POINTS_OLD[*]}"
alias git_pull_robosax_points_old="_repo_git_pull \
  \"${REPO_ROBOSAX_POINTS_OLD[0]}\""
alias git_push_robosax_points_old="_repo_git_push \
  \"${REPO_ROBOSAX_POINTS_OLD[0]}\""
alias git_status_robosax_points_old="_repo_git_st \
  \"${REPO_ROBOSAX_POINTS_OLD[0]}\""

# webseite (robosax)
alias git_clone_robosax_web="_repo_git_clone ${REPO_ROBOSAX_WEB[*]}"
alias git_pull_robosax_web="_repo_git_pull \"${REPO_ROBOSAX_WEB[0]}\""
alias git_push_robosax_web="_repo_git_push \"${REPO_ROBOSAX_WEB[0]}\""
alias git_status_robosax_web="_repo_git_st \"${REPO_ROBOSAX_WEB[0]}\""

# omnibot (robosax)
alias git_clone_robosax_omnibot="_repo_git_clone \
  ${REPO_ROBOSAX_OMNIBOT[*]}"
alias git_pull_robosax_omnibot="_repo_git_pull \
  \"${REPO_ROBOSAX_OMNIBOT[0]}\""
alias git_push_robosax_omnibot="_repo_git_push \
  \"${REPO_ROBOSAX_OMNIBOT[0]}\""
alias git_status_robosax_omnibot="_repo_git_st \
  \"${REPO_ROBOSAX_OMNIBOT[0]}\""



#***************************[robo/roboag]
# 2018 11 01

# display (roboag)
alias git_clone_roboag_display="_repo_git_clone ${REPO_ROBOAG_DISPLAY[*]}"
alias git_pull_roboag_display="_repo_git_pull \"${REPO_ROBOAG_DISPLAY[0]}\""
alias git_push_roboag_display="_repo_git_push \"${REPO_ROBOAG_DISPLAY[0]}\""
alias git_status_roboag_display="_repo_git_st \"${REPO_ROBOAG_DISPLAY[0]}\""

# gluecksrad (roboag)
alias git_clone_roboag_gluecksrad="_repo_git_clone \
  ${REPO_ROBOAG_GLUECKSRAD[*]}"
alias git_pull_roboag_gluecksrad="_repo_git_pull \
  \"${REPO_ROBOAG_GLUECKSRAD[0]}\""
alias git_push_roboag_gluecksrad="_repo_git_push \
  \"${REPO_ROBOAG_GLUECKSRAD[0]}\""
alias git_status_roboag_gluecksrad="_repo_git_st \
  \"${REPO_ROBOAG_GLUECKSRAD[0]}\""

# 3pi modification (roboag)
alias git_clone_roboag_3pi="_repo_git_clone ${REPO_ROBOAG_3PI[*]}"
alias git_pull_roboag_3pi="_repo_git_pull \"${REPO_ROBOAG_3PI[0]}\""
alias git_push_roboag_3pi="_repo_git_push \"${REPO_ROBOAG_3PI[0]}\""
alias git_status_roboag_3pi="_repo_git_st \"${REPO_ROBOAG_3PI[0]}\""

# robots (roboag)
alias git_clone_roboag_roboter="_repo_git_clone ${REPO_ROBOAG_ROBOTER[*]}"
alias git_pull_roboag_roboter="_repo_git_pull \"${REPO_ROBOAG_ROBOTER[0]}\""
alias git_push_roboag_roboter="_repo_git_push \"${REPO_ROBOAG_ROBOTER[0]}\""
alias git_status_roboag_roboter="_repo_git_st \"${REPO_ROBOAG_ROBOTER[0]}\""

# php filebrowser (roboag)
alias git_clone_roboag_filebrowser_php="_repo_git_clone \
  ${REPO_ROBOAG_FILEBROWSER_PHP[*]}"
alias git_pull_roboag_filebrowser_php="_repo_git_pull \
  \"${REPO_ROBOAG_FILEBROWSER_PHP[0]}\""
alias git_push_roboag_filebrowser_php="_repo_git_push \
  \"${REPO_ROBOAG_FILEBROWSER_PHP[0]}\""
alias git_status_roboag_filebrowser_php="_repo_git_st \
  \"${REPO_ROBOAG_FILEBROWSER_PHP[0]}\""



#***************************[projects]****************************************

#***************************[projects/eagle]
# 2018 02 25

# dmx-driver (peter)
alias git_clone_eagle_dmx_driver="_repo_git_clone \
  ${REPO_EAGLE_DMX_DRIVER[*]}"
alias git_pull_eagle_dmx_driver="_repo_git_pull \
  \"${REPO_EAGLE_DMX_DRIVER[0]}\""
alias git_push_eagle_dmx_driver="_repo_git_push \
  \"${REPO_EAGLE_DMX_DRIVER[0]}\""
alias git_status_eagle_dmx_driver="_repo_git_st \
  \"${REPO_EAGLE_DMX_DRIVER[0]}\""

#***************************[projects/hardware]
# 2018 02 25

# audio system (peter)
alias git_clone_hardware_audio_home="_repo_git_clone \
  ${REPO_HARDWARE_AUDIO_HOME[*]}"
alias git_pull_hardware_audio_home="_repo_git_pull \
  \"${REPO_HARDWARE_AUDIO_HOME[0]}\""
alias git_push_hardware_audio_home="_repo_git_push \
  \"${REPO_HARDWARE_AUDIO_HOME[0]}\""
alias git_status_hardware_audio_home="_repo_git_st \
  \"${REPO_HARDWARE_AUDIO_HOME[0]}\""

# opa (peter)
alias git_clone_hardware_dmx_opa="_repo_git_clone \
  ${REPO_HARDWARE_DMX_OPA[*]}"
alias git_pull_hardware_dmx_opa="_repo_git_pull \
  \"${REPO_HARDWARE_DMX_OPA[0]}\""
alias git_push_hardware_dmx_opa="_repo_git_push \
  \"${REPO_HARDWARE_DMX_OPA[0]}\""
alias git_status_hardware_dmx_opa="_repo_git_st \
  \"${REPO_HARDWARE_DMX_OPA[0]}\""

# dimmer (peter)
alias git_clone_hardware_dimmer="_repo_git_clone \
  ${REPO_HARDWARE_DIMMER[*]}"
alias git_pull_hardware_dimmer="_repo_git_pull \
  \"${REPO_HARDWARE_DIMMER[0]}\""
alias git_push_hardware_dimmer="_repo_git_push \
  \"${REPO_HARDWARE_DIMMER[0]}\""
alias git_status_hardware_dimmer="_repo_git_st \
  \"${REPO_HARDWARE_DIMMER[0]}\""

#***************************[projects/c++]
# 2018 02 08

# all
alias git_pull_cpp="if [ -d \"${REPO_CPP_MAIN[0]}\" ]; then \
  bash -c 'cd \"${REPO_CPP_MAIN[0]}\" && make update'; fi"
alias git_status_cpp="if [ -d \"${REPO_CPP_MAIN[0]}\" ]; then \
  bash -c 'cd \"${REPO_CPP_MAIN[0]}\" && make status'; fi"

# main (peter)
alias git_clone_cpp_main="_repo_git_clone ${REPO_CPP_MAIN[*]}"
alias git_pull_cpp_main="_repo_git_pull \"${REPO_CPP_MAIN[0]}\""
alias git_push_cpp_main="_repo_git_push \"${REPO_CPP_MAIN[0]}\""
alias git_status_cpp_main="_repo_git_st \"${REPO_CPP_MAIN[0]}\""

# basic (peter)
alias git_clone_cpp_basic="_repo_git_clone ${REPO_CPP_BASIC[*]}"
alias git_pull_cpp_basic="_repo_git_pull \"${REPO_CPP_BASIC[0]}\""
alias git_push_cpp_basic="_repo_git_push \"${REPO_CPP_BASIC[0]}\""
alias git_status_cpp_basic="_repo_git_st \"${REPO_CPP_BASIC[0]}\""

# comport (peter)
alias git_clone_cpp_comport="_repo_git_clone ${REPO_CPP_COMPORT[*]}"
alias git_pull_cpp_comport="_repo_git_pull \"${REPO_CPP_COMPORT[0]}\""
alias git_push_cpp_comport="_repo_git_push \"${REPO_CPP_COMPORT[0]}\""
alias git_status_cpp_comport="_repo_git_st \"${REPO_CPP_COMPORT[0]}\""

# file (peter)
alias git_clone_cpp_file="_repo_git_clone ${REPO_CPP_FILE[*]}"
alias git_pull_cpp_file="_repo_git_pull \"${REPO_CPP_FILE[0]}\""
alias git_push_cpp_file="_repo_git_push \"${REPO_CPP_FILE[0]}\""
alias git_status_cpp_file="_repo_git_st \"${REPO_CPP_FILE[0]}\""

# avr-downloader (peter)
alias git_clone_cpp_downloader="_repo_git_clone ${REPO_CPP_DOWNLOADER[*]}"
alias git_pull_cpp_downloader="_repo_git_pull \"${REPO_CPP_DOWNLOADER[0]}\""
alias git_push_cpp_downloader="_repo_git_push \"${REPO_CPP_DOWNLOADER[0]}\""
alias git_status_cpp_downloader="_repo_git_st \"${REPO_CPP_DOWNLOADER[0]}\""

# xbee-tool (peter)
alias git_clone_cpp_xbee="_repo_git_clone ${REPO_CPP_XBEE[*]}"
alias git_pull_cpp_xbee="_repo_git_pull \"${REPO_CPP_XBEE[0]}\""
alias git_push_cpp_xbee="_repo_git_push \"${REPO_CPP_XBEE[0]}\""
alias git_status_cpp_xbee="_repo_git_st \"${REPO_CPP_XBEE[0]}\""



#***************************[doc]*********************************************
# 2019 08 21

# imscp-server (peter)
alias git_clone_doc_server_imscp="_repo_git_clone \
  ${REPO_DOC_SERVER_IMSCP[*]}"
alias git_pull_doc_server_imscp="_repo_git_pull \
  \"${REPO_DOC_SERVER_IMSCP[0]}\""
alias git_push_doc_server_imscp="_repo_git_push \
  \"${REPO_DOC_SERVER_IMSCP[0]}\""
alias git_status_doc_server_imscp="_repo_git_st \
\"${REPO_DOC_SERVER_IMSCP[0]}\""

# local server (peter)
alias git_clone_doc_server_local="_repo_git_clone \
  ${REPO_DOC_SERVER_LOCAL[*]}"
alias git_pull_doc_server_local="_repo_git_pull \
  \"${REPO_DOC_SERVER_LOCAL[0]}\""
alias git_push_doc_server_local="_repo_git_push \
  \"${REPO_DOC_SERVER_LOCAL[0]}\""
alias git_status_doc_server_local="_repo_git_st \
\"${REPO_DOC_SERVER_LOCAL[0]}\""

# robolib as release-repo (roboag)
alias git_clone_doc_robolib="_repo_git_clone ${REPO_DOC_ROBOLIB[*]}"
alias git_pull_doc_robolib="_repo_git_pull_release \
  \"${REPO_DOC_ROBOLIB[0]}\""
alias git_push_doc_robolib="_repo_git_push \"${REPO_DOC_ROBOLIB[0]}\""
alias git_status_doc_robolib="_repo_git_st \"${REPO_DOC_ROBOLIB[0]}\""



#***************************[ros]*********************************************

#***************************[ros-tools-pa]
# 2018 06 19

# parameter (TUC-ProAut)
alias git_clone_ros_parameter="_repo_git_clone \
  ${REPO_ROS_PROAUT_PARAMETER[*]}"
alias git_pull_ros_parameter="_repo_git_pull \
  \"${REPO_ROS_PROAUT_PARAMETER[0]}\""
alias git_push_ros_parameter="_repo_git_push \
  \"${REPO_ROS_PROAUT_PARAMETER[0]}\""
alias git_status_ros_parameter="_repo_git_st \
  \"${REPO_ROS_PROAUT_PARAMETER[0]}\""

# pcdfilter (TUC-ProAut)
alias git_clone_ros_pcdfilter="_repo_git_clone \
  ${REPO_ROS_PROAUT_PCDFILTER[*]}"
alias git_pull_ros_pcdfilter="_repo_git_pull \
  \"${REPO_ROS_PROAUT_PCDFILTER[0]}\""
alias git_push_ros_pcdfilter="_repo_git_push \
  \"${REPO_ROS_PROAUT_PCDFILTER[0]}\""
alias git_status_ros_pcdfilter="_repo_git_st \
  \"${REPO_ROS_PROAUT_PCDFILTER[0]}\""

# octomap (TUC-ProAut)
alias git_clone_ros_octomap="_repo_git_clone \
  ${REPO_ROS_PROAUT_OCTOMAP[*]}"
alias git_pull_ros_octomap="_repo_git_pull \
  \"${REPO_ROS_PROAUT_OCTOMAP[0]}\""
alias git_push_ros_octomap="_repo_git_push \
  \"${REPO_ROS_PROAUT_OCTOMAP[0]}\""
alias git_status_ros_octomap="_repo_git_st \
  \"${REPO_ROS_PROAUT_OCTOMAP[0]}\""

# nearfield map (TUC-ProAut)
alias git_clone_ros_nearfieldmap="_repo_git_clone \
  ${REPO_ROS_PROAUT_NEARFIELDMAP[*]}"
alias git_pull_ros_nearfieldmap="_repo_git_pull \
  \"${REPO_ROS_PROAUT_NEARFIELDMAP[0]}\""
alias git_push_ros_nearfieldmap="_repo_git_push \
  \"${REPO_ROS_PROAUT_NEARFIELDMAP[0]}\""
alias git_status_ros_nearfieldmap="_repo_git_st \
  \"${REPO_ROS_PROAUT_NEARFIELDMAP[0]}\""

# odometry (TUC-ProAut)
alias git_clone_ros_odometry="_repo_git_clone \
  ${REPO_ROS_PROAUT_ODOMETRY[*]}"
alias git_pull_ros_odometry="_repo_git_pull \
  \"${REPO_ROS_PROAUT_ODOMETRY[0]}\""
alias git_push_ros_odometry="_repo_git_push \
  \"${REPO_ROS_PROAUT_ODOMETRY[0]}\""
alias git_status_ros_odometry="_repo_git_st \
  \"${REPO_ROS_PROAUT_ODOMETRY[0]}\""


#***************************[ros-sensors-pa]
# 2018 06 19

# radar (TUC-ProAut)
alias git_clone_ros_radar="_repo_git_clone \
  ${REPO_ROS_PROAUT_RADAR[*]}"
alias git_pull_ros_radar="_repo_git_pull \
  \"${REPO_ROS_PROAUT_RADAR[0]}\""
alias git_push_ros_radar="_repo_git_push \
  \"${REPO_ROS_PROAUT_RADAR[0]}\""
alias git_status_ros_radar="_repo_git_st \
  \"${REPO_ROS_PROAUT_RADAR[0]}\""



#***************************[git global]**************************************

#***************************[pull]
# 2019 06 22

function repo_pull_all() {

    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME needs 0 parameters"
        echo "Executes \"git pull\" on all avaiable repositories."

        return
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
    git_pull_bash_master
    git_pull_bash_roboag


    git_pull_robo_lib
    git_pull_robo_pololu

    git_pull_robo_eagle_config
    git_pull_robo_eagle_keplerboard
    git_pull_robo_eagle_xbee
    git_pull_robo_eagle_logic
    git_pull_robo_eagle_vtgMon

    git_pull_roboag_display
    git_pull_roboag_gluecksrad
    git_pull_roboag_3pi
    git_pull_roboag_roboter
    git_pull_roboag_filebrowser_php

    git_pull_robosax_spielfeld
    git_pull_robosax_ledbox
    git_pull_robosax_licht_tht
    git_pull_robosax_spielfeld_tht
    git_pull_robosax_spielfeld_avr
    git_pull_robosax_anzeige_tht
    git_pull_robosax_points
    git_pull_robosax_points_old
    git_pull_robosax_web
    git_pull_robosax_omnibot


    git_pull_eagle_dmx_driver

    git_pull_hardware_audio_home
    git_pull_hardware_dmx_opa
    git_pull_hardware_dimmer

    git_pull_cpp


    git_pull_doc_server_imscp
    git_pull_doc_server_local
    git_pull_doc_robolib


    git_pull_ros_parameter
    git_pull_ros_pcdfilter
    git_pull_ros_octomap
    git_pull_ros_nearfieldmap
    git_pull_ros_odometry
    git_pull_ros_radar
}

#***************************[status]
# 2019 06 22

function repo_status_all() {

    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME needs 0 parameters"
        echo "Executes \"git status\" on all avaiable repositories."

        return
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
    git_status_bash_master
    git_status_bash_roboag


    git_status_robo_lib
    git_status_robo_pololu

    git_status_robo_eagle_config
    git_status_robo_eagle_keplerboard
    git_status_robo_eagle_xbee
    git_status_robo_eagle_logic
    git_status_robo_eagle_vtgMon

    git_status_roboag_display
    git_status_roboag_gluecksrad
    git_status_roboag_3pi
    git_status_roboag_roboter
    git_status_roboag_filebrowser_php

    git_status_robosax_spielfeld
    git_status_robosax_ledbox
    git_status_robosax_licht_tht
    git_status_robosax_spielfeld_tht
    git_status_robosax_spielfeld_avr
    git_status_robosax_anzeige_tht
    git_status_robosax_points
    git_status_robosax_points_old
    git_status_robosax_web
    git_status_robosax_omnibot


    git_status_eagle_dmx_driver

    git_status_hardware_audio_home
    git_status_hardware_dmx_opa
    git_status_hardware_dimmer

    git_status_cpp


    git_status_doc_server_imscp
    git_status_doc_server_local
    git_status_doc_robolib


    git_status_ros_parameter
    git_status_ros_pcdfilter
    git_status_ros_octomap
    git_status_ros_nearfieldmap
    git_status_ros_odometry
    git_status_ros_radar


    repo_additional_dirs_status
}

#***************************[clone]
# 2019 06 22

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
    git_clone_bash_master
    git_clone_bash_repo
    git_clone_bash_config
    git_clone_bash_network
    git_clone_bash_multimedia
    git_clone_bash_file
}

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
    git_clone_bash_roboag


    git_clone_robo_lib
    git_clone_robo_pololu

    git_clone_robo_eagle_config
    git_clone_robo_eagle_keplerboard
    git_clone_robo_eagle_xbee
    git_clone_robo_eagle_logic
    git_clone_robo_eagle_vtgMon

    git_clone_roboag_display
    git_clone_roboag_gluecksrad
    git_clone_roboag_3pi
    git_clone_roboag_roboter
    git_clone_roboag_filebrowser_php

    git_clone_robosax_spielfeld
    git_clone_robosax_ledbox
    git_clone_robosax_licht_tht
    git_clone_robosax_spielfeld_tht
    git_clone_robosax_spielfeld_avr
    git_clone_robosax_anzeige_tht
    git_clone_robosax_points
    git_clone_robosax_points_old
    git_clone_robosax_web
    git_clone_robosax_omnibot


    git_clone_eagle_dmx_driver

    git_clone_hardware_audio_home
    git_clone_hardware_dmx_opa
    git_clone_hardware_dimmer

    git_clone_cpp_main
    git_clone_cpp_basic
    git_clone_cpp_file
    git_clone_cpp_comport
    git_clone_cpp_downloader
    git_clone_cpp_xbee


    git_clone_doc_server_imscp
    git_clone_doc_server_local
    git_clone_doc_robolib


    git_clone_ros_parameter
    git_clone_ros_pcdfilter
    git_clone_ros_octomap
    git_clone_ros_nearfieldmap
    git_clone_ros_odometry
    git_clone_ros_radar
}
