#!/bin/bash

#***************************[bash]*******************************************
# 2023 11 18

# repositories functions (peter)
function git_clone_bash_repo() {
    _repo_git_clone ${REPO_BASH_REPO[*]}  bash/repo; }
function git_pull_bash_repo() {
    _repo_git_pull "${REPO_BASH_REPO[0]}" bash/repo; }
function git_status_bash_repo() {
    _repo_git_st   "${REPO_BASH_REPO[0]}" bash/repo; }

# config functions (peter)
function git_clone_bash_config() {
    _repo_git_clone ${REPO_BASH_CONFIG[*]}  bash/config; }
function git_pull_bash_config() {
    _repo_git_pull "${REPO_BASH_CONFIG[0]}" bash/config; }
function git_status_bash_config() {
     _repo_git_st  "${REPO_BASH_CONFIG[0]}" bash/config; }

# network functions (peter)
function git_clone_bash_network() {
    _repo_git_clone ${REPO_BASH_NETWORK[*]}  bash/network; }
function git_pull_bash_network() {
    _repo_git_pull "${REPO_BASH_NETWORK[0]}" bash/network; }
function git_status_bash_network() {
    _repo_git_st   "${REPO_BASH_NETWORK[0]}" bash/network; }

# multimedia functions (peter)
function git_clone_bash_multimedia() {
    _repo_git_clone ${REPO_BASH_MULTIMEDIA[*]}  bash/multimedia; }
function git_pull_bash_multimedia() {
    _repo_git_pull "${REPO_BASH_MULTIMEDIA[0]}" bash/multimedia; }
function git_status_bash_multimedia() {
    _repo_git_st   "${REPO_BASH_MULTIMEDIA[0]}" bash/multimedia; }

# file functions (peter)
function git_clone_bash_file() {
    _repo_git_clone ${REPO_BASH_FILE[*]}  bash/file; }
function git_pull_bash_file() {
    _repo_git_pull "${REPO_BASH_FILE[0]}" bash/file; }
function git_status_bash_file() {
    _repo_git_st   "${REPO_BASH_FILE[0]}" bash/file; }

#***************************[bash/master]
# 2023 11 18

# master simple (peter)
function git_clone_bash_master_simple() {
    _repo_git_clone ${REPO_BASH_MASTER_BASHONLY[*]}  master/simple; }
function git_pull_bash_master_simple() {
    _repo_git_pull "${REPO_BASH_MASTER_BASHONLY[0]}" master/simple; }
function git_status_bash_master_simple() {
    _repo_git_st   "${REPO_BASH_MASTER_BASHONLY[0]}" master/simple; }

# master server (peter)
function git_clone_bash_master_server() {
    _repo_git_clone ${REPO_BASH_MASTER_SERVER[*]}  master/server; }
function git_pull_bash_master_server() {
    _repo_git_pull "${REPO_BASH_MASTER_SERVER[0]}" master/server; }
function git_status_bash_master_server() {
    _repo_git_st   "${REPO_BASH_MASTER_SERVER[0]}" master/server; }

# roboag (roboag)
function git_clone_bash_roboag() {
    _repo_git_clone ${REPO_BASH_MASTER_ROBOAG[*]}  master/roboag; }
function git_pull_bash_roboag() {
    _repo_git_pull "${REPO_BASH_MASTER_ROBOAG[0]}" master/roboag; }
function git_status_bash_roboag() {
    _repo_git_st   "${REPO_BASH_MASTER_ROBOAG[0]}" master/roboag; }



#***************************[roboag]******************************************
# 2023 11 18

# robolib (roboag)
function git_clone_roboag_lib() {
    _repo_git_clone ${REPO_ROBOAG_LIB[*]}  roboag/robolib; }
function git_pull_roboag_lib() {
    _repo_git_pull "${REPO_ROBOAG_LIB[0]}" roboag/robolib; }
function git_status_roboag_lib() {
    _repo_git_st   "${REPO_ROBOAG_LIB[0]}" roboag/robolib; }

# pololu (extern)
function git_clone_roboag_pololu() {
    _repo_git_clone ${REPO_ROBOAG_POLOLU[*]} ; }
function git_pull_roboag_pololu() {
    _repo_git_pull "${REPO_ROBOAG_POLOLU[0]}"; }
function git_status_roboag_pololu() {
    _repo_git_st   "${REPO_ROBOAG_POLOLU[0]}"; }

#***************************[roboag/roberta]
# 2023 11 18

# connector (open-roberta)
function git_clone_roboag_roberta_connector() {
    _repo_git_clone ${REPO_ROBOAG_ROBERTA_CONNECTOR[*]}  roberta/connector; }
function git_pull_roboag_roberta_connector() {
    _repo_git_pull "${REPO_ROBOAG_ROBERTA_CONNECTOR[0]}" roberta/connector; }
function git_status_roboag_roberta_connector() {
    _repo_git_st   "${REPO_ROBOAG_ROBERTA_CONNECTOR[0]}" roberta/connector; }

# server (open-roberta)
function git_clone_roboag_roberta_server() {
    _repo_git_clone ${REPO_ROBOAG_ROBERTA_SERVER[*]}  roberta/server; }
function git_pull_roboag_roberta_server() {
    _repo_git_pull "${REPO_ROBOAG_ROBERTA_SERVER[0]}" roberta/server; }
function git_status_roboag_roberta_server() {
    _repo_git_st   "${REPO_ROBOAG_ROBERTA_SERVER[0]}" roberta/server; }

#***************************[roboag/mblock]
# 2023 11 18

# arduino (mblock)
function git_clone_roboag_mblock_arduino() {
    _repo_git_clone ${REPO_ROBOAG_MBLOCK_ARDUINO[*]}  mblock/arduino; }
function git_pull_roboag_mblock_arduino() {
    _repo_git_pull "${REPO_ROBOAG_MBLOCK_ARDUINO[0]}" mblock/arduino; }
function git_status_roboag_mblock_arduino() {
    _repo_git_st   "${REPO_ROBOAG_MBLOCK_ARDUINO[0]}" mblock/arduino; }

# mbot (mblock)
function git_clone_roboag_mblock_mbot() {
    _repo_git_clone ${REPO_ROBOAG_MBLOCK_MBOT[*]}  mblock/mbot; }
function git_pull_roboag_mblock_mbot() {
    _repo_git_pull "${REPO_ROBOAG_MBLOCK_MBOT[0]}" mblock/mbot; }
function git_status_roboag_mblock_mbot() {
    _repo_git_st   "${REPO_ROBOAG_MBLOCK_MBOT[0]}" mblock/mbot; }

#***************************[roboag/doc]
# 2023 11 18

# robolib as release-repo (roboag)
function git_clone_roboag_doc_robolib() {
    _repo_git_clone         ${REPO_ROBOAG_DOC_ROBOLIB[*]}  doc/robolib; }
function git_pull_roboag_doc_robolib() {
    _repo_git_pull_release "${REPO_ROBOAG_DOC_ROBOLIB[0]}" doc/robolib; }
function git_status_roboag_doc_robolib() {
    _repo_git_st           "${REPO_ROBOAG_DOC_ROBOLIB[0]}" doc/robolib; }

# install (roboag)
function git_clone_roboag_doc_install() {
    _repo_git_clone         ${REPO_ROBOAG_DOC_INSTALL[*]}  doc/install; }
function git_pull_roboag_doc_install() {
    _repo_git_pull_release "${REPO_ROBOAG_DOC_INSTALL[0]}" doc/install; }
function git_status_roboag_doc_install() {
    _repo_git_st           "${REPO_ROBOAG_DOC_INSTALL[0]}" doc/install; }

#***************************[roboag/eagle]
# 2023 11 18

# config (roboag)
function git_clone_roboag_eagle_config() {
    _repo_git_clone ${REPO_ROBOAG_EAGLE_CONFIG[*]}  eagle/config; }
function git_pull_roboag_eagle_config() {
    _repo_git_pull "${REPO_ROBOAG_EAGLE_CONFIG[0]}" eagle/config; }
function git_status_roboag_eagle_config() {
    _repo_git_st   "${REPO_ROBOAG_EAGLE_CONFIG[0]}" eagle/config; }

# keplerboard (roboag)
function git_clone_roboag_eagle_keplerboard() {
    _repo_git_clone ${REPO_ROBOAG_EAGLE_KEPLERBOARD[*]}  eagle/keplerboard; }
function git_pull_roboag_eagle_keplerboard() {
    _repo_git_pull "${REPO_ROBOAG_EAGLE_KEPLERBOARD[0]}" eagle/keplerboard; }
function git_status_roboag_eagle_keplerboard() {
    _repo_git_st   "${REPO_ROBOAG_EAGLE_KEPLERBOARD[0]}" eagle/keplerboard; }

# xbee (roboag)
function git_clone_roboag_eagle_xbee() {
    _repo_git_clone ${REPO_ROBOAG_EAGLE_XBEE[*]}  eagle/xbee; }
function git_pull_roboag_eagle_xbee() {
    _repo_git_pull "${REPO_ROBOAG_EAGLE_XBEE[0]}" eagle/xbee; }
function git_status_roboag_eagle_xbee() {
    _repo_git_st   "${REPO_ROBOAG_EAGLE_XBEE[0]}" eagle/xbee; }

# logic (roboag)
function git_clone_roboag_eagle_logic() {
    _repo_git_clone ${REPO_ROBOAG_EAGLE_LOGIC[*]}  eagle/logic; }
function git_pull_roboag_eagle_logic() {
    _repo_git_pull "${REPO_ROBOAG_EAGLE_LOGIC[0]}" eagle/logic; }
function git_status_roboag_eagle_logic() {
    _repo_git_st   "${REPO_ROBOAG_EAGLE_LOGIC[0]}" eagle/logic; }

# voltage monitor (roboag)
function git_clone_roboag_eagle_vtgMon() {
    _repo_git_clone ${REPO_ROBOAG_EAGLE_VTGMON[*]}  eagle/vtgmon; }
function git_pull_roboag_eagle_vtgMon() {
    _repo_git_pull "${REPO_ROBOAG_EAGLE_VTGMON[0]}" eagle/vtgmon; }
function git_status_roboag_eagle_vtgMon() {
    _repo_git_st   "${REPO_ROBOAG_EAGLE_VTGMON[0]}" eagle/vtgmon; }

#***************************[roboag/projects]
# 2023 11 18

# display (roboag)
function git_clone_roboag_projects_display() {
    _repo_git_clone ${REPO_ROBOAG_PROJECTS_DISPLAY[*]}; }
function git_pull_roboag_projects_display() {
    _repo_git_pull "${REPO_ROBOAG_PROJECTS_DISPLAY[0]}"; }
function git_status_roboag_projects_display() {
    _repo_git_st   "${REPO_ROBOAG_PROJECTS_DISPLAY[0]}"; }

# gluecksrad (roboag)
function git_clone_roboag_projects_gluecksrad() {
    _repo_git_clone ${REPO_ROBOAG_PROJECTS_GLUECKSRAD[*]}; }
function git_pull_roboag_projects_gluecksrad() {
    _repo_git_pull "${REPO_ROBOAG_PROJECTS_GLUECKSRAD[0]}"; }
function git_status_roboag_projects_gluecksrad() {
    _repo_git_st   "${REPO_ROBOAG_PROJECTS_GLUECKSRAD[0]}"; }

# 3pi modification (roboag)
function git_clone_roboag_projects_3pi() {
    _repo_git_clone ${REPO_ROBOAG_PROJECTS_3PI[*]}; }
function git_pull_roboag_projects_3pi() {
    _repo_git_pull "${REPO_ROBOAG_PROJECTS_3PI[0]}"; }
function git_status_roboag_projects_3pi() {
    _repo_git_st   "${REPO_ROBOAG_PROJECTS_3PI[0]}"; }

# robots (roboag)
function git_clone_roboag_projects_roboter() {
    _repo_git_clone ${REPO_ROBOAG_PROJECTS_ROBOTER[*]}; }
function git_pull_roboag_projects_roboter() {
    _repo_git_pull "${REPO_ROBOAG_PROJECTS_ROBOTER[0]}"; }
function git_status_roboag_projects_roboter() {
    _repo_git_st   "${REPO_ROBOAG_PROJECTS_ROBOTER[0]}"; }

#***************************[roboag/php]
# 2023 11 18

# filebrowser (roboag)
function git_clone_roboag_php_filebrowser() {
    _repo_git_clone ${REPO_ROBOAG_PHP_FILEBROWSER[*]}  php/filebrowser; }
function git_pull_roboag_php_filebrowser() {
    _repo_git_pull "${REPO_ROBOAG_PHP_FILEBROWSER[0]}" php/filebrowser; }
function git_status_roboag_php_filebrowser() {
    _repo_git_st   "${REPO_ROBOAG_PHP_FILEBROWSER[0]}" php/filebrowser; }



#***************************[robosax]*****************************************

#***************************[robosax/doc]
# 2023 11 18

# punkte as release-repo (robosax)
function git_clone_robosax_doc_punkte() {
    _repo_git_clone         ${REPO_ROBOSAX_DOC_PUNKTE[*]}  doc/punkte; }
function git_pull_robosax_doc_punkte() {
    _repo_git_pull_release "${REPO_ROBOSAX_DOC_PUNKTE[0]}" doc/punkte; }
function git_status_robosax_doc_punkte() {
    _repo_git_st           "${REPO_ROBOSAX_DOC_PUNKTE[0]}" doc/punkte; }

#***************************[robosax/eagle]
# 2023 11 18

# spielfeld circuit (robosax)
function git_clone_robosax_eagle_spielfeld() {
    _repo_git_clone ${REPO_ROBOSAX_EAGLE_SPIELFELD[*]}  eagle/spielfeld; }
function git_pull_robosax_eagle_spielfeld() {
    _repo_git_pull "${REPO_ROBOSAX_EAGLE_SPIELFELD[0]}" eagle/spielfeld; }
function git_status_robosax_eagle_spielfeld() {
    _repo_git_st   "${REPO_ROBOSAX_EAGLE_SPIELFELD[0]}" eagle/spielfeld; }

# licht circuit (robosax)
function git_clone_robosax_eagle_licht() {
    _repo_git_clone ${REPO_ROBOSAX_EAGLE_LICHT[*]}  eagle/licht; }
function git_pull_robosax_eagle_licht() {
    _repo_git_pull "${REPO_ROBOSAX_EAGLE_LICHT[0]}" eagle/licht; }
function git_status_robosax_eagle_licht() {
    _repo_git_st   "${REPO_ROBOSAX_EAGLE_LICHT[0]}" eagle/licht; }

# anzeige circuit (robosax)
function git_clone_robosax_eagle_anzeige() {
    _repo_git_clone ${REPO_ROBOSAX_EAGLE_ANZEIGE[*]}  eagle/anzeige; }
function git_pull_robosax_eagle_anzeige() {
    _repo_git_pull "${REPO_ROBOSAX_EAGLE_ANZEIGE[0]}" eagle/anzeige; }
function git_status_robosax_eagle_anzeige() {
    _repo_git_st   "${REPO_ROBOSAX_EAGLE_ANZEIGE[0]}" eagle/anzeige; }

#***************************[robosax/avr]
# 2023 11 18

# spielfeld software (robosax)
function git_clone_robosax_avr_spielfeld() {
    _repo_git_clone ${REPO_ROBOSAX_AVR_SPIELFELD[*]}  avr/spielfeld; }
function git_pull_robosax_avr_spielfeld() {
    _repo_git_pull "${REPO_ROBOSAX_AVR_SPIELFELD[0]}" avr/spielfeld; }
function git_status_robosax_avr_spielfeld() {
    _repo_git_st   "${REPO_ROBOSAX_AVR_SPIELFELD[0]}" avr/spielfeld; }

# omnibot (robosax)
function git_clone_robosax_avr_omnibot() {
    _repo_git_clone ${REPO_ROBOSAX_AVR_OMNIBOT[*]}  avr/omnibot; }
function git_pull_robosax_avr_omnibot() {
    _repo_git_pull "${REPO_ROBOSAX_AVR_OMNIBOT[0]}" avr/omnibot; }
function git_status_robosax_avr_omnibot() {
    _repo_git_st   "${REPO_ROBOSAX_AVR_OMNIBOT[0]}" avr/omnibot; }

#***************************[robosax/projects]
# 2023 11 18

# spielfeld drawings (robosax)
function git_clone_robosax_projects_spielfeld() {
    _repo_git_clone ${REPO_ROBOSAX_PROJECTS_SPIELFELD[*]}  cad/spielfeld; }
function git_pull_robosax_projects_spielfeld() {
    _repo_git_pull "${REPO_ROBOSAX_PROJECTS_SPIELFELD[0]}" cad/spielfeld; }
function git_status_robosax_projects_spielfeld() {
    _repo_git_st   "${REPO_ROBOSAX_PROJECTS_SPIELFELD[0]}" cad/spielfeld; }

# led-box (fabian) - original repo is from fabian geissler
function git_clone_robosax_projects_ledbox() {
    _repo_git_clone ${REPO_ROBOSAX_PROJECTS_LEDBOX[*]}  robosax/ledbox; }
function git_pull_robosax_projects_ledbox() {
    _repo_git_pull "${REPO_ROBOSAX_PROJECTS_LEDBOX[0]}" robosax/ledbox; }
function git_status_robosax_projects_ledbox() {
    _repo_git_st   "${REPO_ROBOSAX_PROJECTS_LEDBOX[0]}" robosax/ledbox; }

#***************************[robosax/php]
# 2023 11 18

# punkte (robosax)
function git_clone_robosax_php_punkte() {
    _repo_git_clone ${REPO_ROBOSAX_PHP_PUNKTE[*]}  php/punkte; }
function git_pull_robosax_php_punkte() {
    _repo_git_pull "${REPO_ROBOSAX_PHP_PUNKTE[0]}" php/punkte; }
function git_status_robosax_php_punkte() {
    _repo_git_st   "${REPO_ROBOSAX_PHP_PUNKTE[0]}" php/punkte; }

function git_clone_robosax_php_punkte_old() {
    _repo_git_clone ${REPO_ROBOSAX_PHP_PUNKTE_OLD[*]}  php/punkte_old; }
function git_pull_robosax_php_punkte_old() {
    _repo_git_pull "${REPO_ROBOSAX_PHP_PUNKTE_OLD[0]}" php/punkte_old; }
function git_status_robosax_php_punkte_old() {
    _repo_git_st   "${REPO_ROBOSAX_PHP_PUNKTE_OLD[0]}" php/punkte_old; }

# webseite (robosax)
function git_clone_robosax_php_web_frame() {
    _repo_git_clone ${REPO_ROBOSAX_PHP_WEB_FRAME[*]}  php/webframe; }
function git_pull_robosax_php_web_frame() {
    _repo_git_pull "${REPO_ROBOSAX_PHP_WEB_FRAME[0]}" php/webframe; }
function git_status_robosax_php_web_frame() {
    _repo_git_st   "${REPO_ROBOSAX_PHP_WEB_FRAME[0]}" php/webframe; }



#***************************[projects]****************************************

#***************************[projects/eagle]
# 2023 11 18

# dmx-driver (peter)
function git_clone_eagle_dmx_driver() {
    _repo_git_clone ${REPO_EAGLE_DMX_DRIVER[*]}  peter/dmx; }
function git_pull_eagle_dmx_driver() {
    _repo_git_pull "${REPO_EAGLE_DMX_DRIVER[0]}" peter/dmx; }
function git_status_eagle_dmx_driver() {
    _repo_git_st   "${REPO_EAGLE_DMX_DRIVER[0]}" peter/dmx; }

#***************************[projects/hardware]
# 2023 11 18

# trailer (peter)
function git_clone_hardware_trailer() {
    _repo_git_clone ${REPO_HARDWARE_TRAILER[*]}  peter/trailer; }
function git_pull_hardware_trailer() {
    _repo_git_pull "${REPO_HARDWARE_TRAILER[0]}" peter/trailer; }
function git_status_hardware_trailer() {
    _repo_git_st   "${REPO_HARDWARE_TRAILER[0]}" peter/trailer; }

# audio system (peter)
function git_clone_hardware_audio_home() {
    _repo_git_clone ${REPO_HARDWARE_AUDIO_HOME[*]}  peter/audio; }
function git_pull_hardware_audio_home() {
    _repo_git_pull "${REPO_HARDWARE_AUDIO_HOME[0]}" peter/audio; }
function git_status_hardware_audio_home() {
    _repo_git_st   "${REPO_HARDWARE_AUDIO_HOME[0]}" peter/audio; }

# opa (peter)
function git_clone_hardware_dmx_opa() {
    _repo_git_clone ${REPO_HARDWARE_DMX_OPA[*]}  peter/opa; }
function git_pull_hardware_dmx_opa() {
    _repo_git_pull "${REPO_HARDWARE_DMX_OPA[0]}" peter/opa; }
function git_status_hardware_dmx_opa() {
    _repo_git_st   "${REPO_HARDWARE_DMX_OPA[0]}" peter/opa; }

# dimmer (peter)
function git_clone_hardware_dimmer() {
    _repo_git_clone ${REPO_HARDWARE_DIMMER[*]}  peter/dimmer; }
function git_pull_hardware_dimmer() {
    _repo_git_pull "${REPO_HARDWARE_DIMMER[0]}" peter/dimmer; }
function git_status_hardware_dimmer() {
    _repo_git_st   "${REPO_HARDWARE_DIMMER[0]}" peter/dimmer; }

#***************************[projects/c++]
# 2023 11 18

# avr-downloader (peter)
function git_clone_cpp_avr_downloader() {
    _repo_git_clone ${REPO_CPP_AVR_DOWNLOADER[*]}; }
function git_pull_cpp_avr_downloader() {
    _repo_git_pull "${REPO_CPP_AVR_DOWNLOADER[0]}"; }
function git_status_cpp_avr_downloader() {
    _repo_git_st   "${REPO_CPP_AVR_DOWNLOADER[0]}"; }



#***************************[doc]*********************************************
# 2023 11 18

# online-server (peter)
function git_clone_doc_server_online() {
    _repo_git_clone ${REPO_DOC_SERVER_ONLINE[*]}  "doc/server (online)"; }
function git_pull_doc_server_online() {
    _repo_git_pull "${REPO_DOC_SERVER_ONLINE[0]}" "doc/server (online)"; }
function git_status_doc_server_online() {
    _repo_git_st   "${REPO_DOC_SERVER_ONLINE[0]}" "doc/server (online)"; }

# local server (peter)
function git_clone_doc_server_local() {
    _repo_git_clone ${REPO_DOC_SERVER_LOCAL[*]}  "doc/server (local)"; }
function git_pull_doc_server_local() {
    _repo_git_pull "${REPO_DOC_SERVER_LOCAL[0]}" "doc/server (local)"; }
function git_status_doc_server_local() {
    _repo_git_st   "${REPO_DOC_SERVER_LOCAL[0]}" "doc/server (local)"; }



#***************************[ros]*********************************************

#***************************[ros-tools-pa]
# 2023 11 18

# parameter (TUC-ProAut)
function git_clone_ros_parameter() {
    _repo_git_clone ${REPO_ROS_PROAUT_PARAMETER[*]}  ros/parameter_pa; }
function git_pull_ros_parameter() {
    _repo_git_pull "${REPO_ROS_PROAUT_PARAMETER[0]}" ros/parameter_pa; }
function git_status_ros_parameter() {
    _repo_git_st   "${REPO_ROS_PROAUT_PARAMETER[0]}" ros/parameter_pa; }

# pcdfilter (TUC-ProAut)
function git_clone_ros_pcdfilter() {
    _repo_git_clone ${REPO_ROS_PROAUT_PCDFILTER[*]}  ros/pcdfilter_pa; }
function git_pull_ros_pcdfilter() {
    _repo_git_pull "${REPO_ROS_PROAUT_PCDFILTER[0]}" ros/pcdfilter_pa; }
function git_status_ros_pcdfilter() {
    _repo_git_st   "${REPO_ROS_PROAUT_PCDFILTER[0]}" ros/pcdfilter_pa; }

# octomap (TUC-ProAut)
function git_clone_ros_octomap() {
    _repo_git_clone ${REPO_ROS_PROAUT_OCTOMAP[*]}  ros/octomap_pa; }
function git_pull_ros_octomap() {
    _repo_git_pull "${REPO_ROS_PROAUT_OCTOMAP[0]}" ros/octomap_pa; }
function git_status_ros_octomap() {
    _repo_git_st   "${REPO_ROS_PROAUT_OCTOMAP[0]}" ros/octomap_pa; }

# nearfield map (TUC-ProAut)
function git_clone_ros_nearfieldmap() {
    _repo_git_clone ${REPO_ROS_PROAUT_NEARFIELDMAP[*]}  ros/nearfieldmap_pa; }
function git_pull_ros_nearfieldmap() {
    _repo_git_pull "${REPO_ROS_PROAUT_NEARFIELDMAP[0]}" ros/nearfieldmap_pa; }
function git_status_ros_nearfieldmap() {
    _repo_git_st   "${REPO_ROS_PROAUT_NEARFIELDMAP[0]}" ros/nearfieldmap_pa; }

# odometry (TUC-ProAut) -- deprecated
function git_status_ros_odometry() {
    _repo_git_st   "${REPO_ROS_PROAUT_ODOMETRY[0]}" ros/odometry_pa; }


#***************************[ros-sensors-pa]
# 2023 11 18

# radar (TUC-ProAut)
function git_clone_ros_radar() {
    _repo_git_clone ${REPO_ROS_PROAUT_RADAR[*]}  ros/radar_pa; }
function git_pull_ros_radar() {
    _repo_git_pull "${REPO_ROS_PROAUT_RADAR[0]}" ros/radar_pa; }
function git_status_ros_radar() {
    _repo_git_st   "${REPO_ROS_PROAUT_RADAR[0]}" ros/radar_pa; }



#***************************[git global]**************************************

#***************************[pull]
# 2023 02 03

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


    git_pull_ros_parameter
    git_pull_ros_pcdfilter
    git_pull_ros_octomap
    git_pull_ros_nearfieldmap
    git_pull_ros_radar
}

#***************************[status]
# 2023 02 03

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


    git_status_ros_parameter
    git_status_ros_pcdfilter
    git_status_ros_octomap
    git_status_ros_nearfieldmap
    git_status_ros_odometry
    git_status_ros_radar


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

# 2022 02 18
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

    git_clone_cpp_avr_downloader
}
