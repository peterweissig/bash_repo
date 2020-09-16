#!/bin/bash

#***************************[needed external variables]***********************
# 2018 01 05

# REPO_PATH_WORKSPACE



#***************************[server]******************************************
# 2018 02 16

export REPO_ROOT_GITHUB_PETER="https://github.com/peterweissig/"
export REPO_ROOT_GITHUB_FABIAN="https://github.com/fabiangeissler/"

export REPO_ROOT_GITHUB_ROBOAG="https://github.com/RoboAG/"
export REPO_ROOT_GITHUB_ROBOSAX="https://github.com/RoboSAX/"

export REPO_ROOT_GITHUB_PROAUT="https://github.com/TUC-ProAut/"



#***************************[bash]********************************************
# 2018 11 30

# path
if [ "$REPO_BASH_PATH" == "" ]; then
    export REPO_BASH_PATH="${REPO_PATH_WORKSPACE}bash/"
fi

# repositories functions (peter)
export REPO_BASH_REPO=("${REPO_BASH_PATH}repo/" \
  "${REPO_ROOT_GITHUB_PETER}bash_repo.git")

# config functions (peter)
export REPO_BASH_CONFIG=("${REPO_BASH_PATH}config/" \
  "${REPO_ROOT_GITHUB_PETER}bash_config.git")

# network functions (peter)
export REPO_BASH_NETWORK=("${REPO_BASH_PATH}network/" \
  "${REPO_ROOT_GITHUB_PETER}bash_network.git")

# multimedia functions (peter)
export REPO_BASH_MULTIMEDIA=("${REPO_BASH_PATH}multimedia/" \
  "${REPO_ROOT_GITHUB_PETER}bash_multimedia.git")

# file functions (peter)
export REPO_BASH_FILE=("${REPO_BASH_PATH}file/" \
  "${REPO_ROOT_GITHUB_PETER}bash_file.git")

#***************************[bash/master]
# 2019 12 01

# path
if [ "$REPO_BASH_MASTER_PATH" == "" ]; then
    export REPO_BASH_MASTER_PATH="${REPO_BASH_PATH}master/"
fi

# master simple (peter)
export REPO_BASH_MASTER_BASHONLY=("${REPO_BASH_MASTER_PATH}bash_only/" \
  "${REPO_ROOT_GITHUB_PETER}bash_master_simple.git")

# master server (peter)
export REPO_BASH_MASTER_SERVER=("${REPO_BASH_MASTER_PATH}server/" \
  "${REPO_ROOT_GITHUB_PETER}bash_master_server.git")

# roboag (roboag)
export REPO_BASH_MASTER_ROBOAG=("${REPO_BASH_MASTER_PATH}roboag/" \
  "${REPO_ROOT_GITHUB_ROBOAG}bash_roboag.git")



#***************************[robo]********************************************
# 2018 03 01

# path
if [ "$REPO_ROBO_PATH" == "" ]; then
    export REPO_ROBO_PATH="${REPO_PATH_WORKSPACE}robo/"
fi

# robolib (roboag)
export REPO_ROBO_LIB=("${REPO_ROBO_PATH}library/" \
  "${REPO_ROOT_GITHUB_ROBOAG}avr_robolib.git")

# pololu (extern)
export REPO_ROBO_POLOLU=("${REPO_ROBO_PATH}pololu/" \
  "https://github.com/pololu/libpololu-avr.git")

#***************************[robo/eagle]
# 2018 03 01

# path
if [ "$REPO_ROBO_EAGLE_PATH" == "" ]; then
    export REPO_ROBO_EAGLE_PATH="${REPO_ROBO_PATH}eagle/"
fi

# config (roboag)
export REPO_ROBO_EAGLE_CONFIG=("${REPO_ROBO_EAGLE_PATH}config/" \
  "${REPO_ROOT_GITHUB_ROBOAG}eagle_config.git")

# keplerboard (roboag)
export REPO_ROBO_EAGLE_KEPLERBOARD=("${REPO_ROBO_EAGLE_PATH}keplerboard/" \
  "${REPO_ROOT_GITHUB_ROBOAG}eagle_keplerboard.git")

# xbee (roboag)
export REPO_ROBO_EAGLE_XBEE=("${REPO_ROBO_EAGLE_PATH}xbee/" \
  "${REPO_ROOT_GITHUB_ROBOAG}eagle_xbee.git")

# logic (roboag)
export REPO_ROBO_EAGLE_LOGIC=("${REPO_ROBO_EAGLE_PATH}logic/" \
  "${REPO_ROOT_GITHUB_ROBOAG}eagle_logic.git")

# voltage monitor (roboag)
export REPO_ROBO_EAGLE_VTGMON=("${REPO_ROBO_EAGLE_PATH}vtgMon/" \
  "${REPO_ROOT_GITHUB_ROBOAG}eagle_voltageMonitoring.git")

#***************************[robo/roboag]
# 2018 11 01

# path
if [ "$REPO_ROBOAG_PATH" == "" ]; then
    export REPO_ROBOAG_PATH="${REPO_ROBO_PATH}roboag/"
fi
if [ "$REPO_ROBOAG_PHP_PATH" == "" ]; then
    export REPO_ROBOAG_PHP_PATH="${REPO_ROBOAG_PATH}"
fi

# display (roboag)
export REPO_ROBOAG_DISPLAY=("${REPO_ROBOAG_PATH}rotierendes_display/" \
  "${REPO_ROOT_GITHUB_ROBOAG}projekt_display.git")

# gluecksrad (roboag)
export REPO_ROBOAG_GLUECKSRAD=("${REPO_ROBOAG_PATH}gluecksrad/" \
  "${REPO_ROOT_GITHUB_ROBOAG}projekt_gluecksrad.git")

# 3pi modification (roboag)
export REPO_ROBOAG_3PI=("${REPO_ROBOAG_PATH}3pi/" \
  "${REPO_ROOT_GITHUB_ROBOAG}projekt_3pi.git")

# roboter (roboag)
export REPO_ROBOAG_ROBOTER=("${REPO_ROBOAG_PATH}roboter/" \
  "${REPO_ROOT_GITHUB_ROBOAG}projekt_roboter.git")

# php filebrowser (roboag)
export REPO_ROBOAG_FILEBROWSER_PHP=( \
  "${REPO_ROBOAG_PHP_PATH}filebrowser_php/" \
  "${REPO_ROOT_GITHUB_ROBOAG}php_filebrowser.git")



#***************************[robosax]*****************************************
# 2020 09 16

# path
if [ "$REPO_ROBOSAX_PATH" == "" ]; then
    export REPO_ROBOSAX_PATH="${REPO_PATH_WORKSPACE}robosax/"
fi

if [ "$REPO_ROBOSAX_EAGLE_PATH" == "" ]; then
    export REPO_ROBOSAX_EAGLE_PATH="${REPO_ROBOSAX_PATH}eagle/"
fi
if [ "$REPO_ROBOSAX_AVR_PATH" == "" ]; then
    export REPO_ROBOSAX_AVR_PATH="${REPO_ROBOSAX_PATH}avr/"
fi
if [ "$REPO_ROBOSAX_PROJECT_PATH" == "" ]; then
    export REPO_ROBOSAX_PROJECT_PATH="${REPO_ROBOSAX_PATH}projects/"
fi
if [ "$REPO_ROBOSAX_PHP_PATH" == "" ]; then
    export REPO_ROBOSAX_PHP_PATH="${REPO_ROBOSAX_PATH}php/"
fi

#***************************[robosax/eagle]
# 2020 09 16

# spielfeld circuit (robosax)
export REPO_ROBOSAX_EAGLE_SPIELFELD=( \
  "${REPO_ROBOSAX_EAGLE_PATH}spielfeld/" \
  "${REPO_ROOT_GITHUB_ROBOSAX}eagle_spielfeld.git")

# licht-tht circuit (robosax)
export REPO_ROBOSAX_EAGLE_LICHT=("${REPO_ROBOSAX_EAGLE_PATH}licht/" \
  "${REPO_ROOT_GITHUB_ROBOSAX}eagle_licht.git")

# anzeige circuit (robosax)
export REPO_ROBOSAX_EAGLE_ANZEIGE=("${REPO_ROBOSAX_EAGLE_PATH}anzeige/" \
  "${REPO_ROOT_GITHUB_ROBOSAX}eagle_anzeige.git")

#***************************[robosax/avr]
# 2020 09 16

# spielfeld software (robosax)
export REPO_ROBOSAX_AVR_SPIELFELD=("${REPO_ROBOSAX_AVR_PATH}spielfeld/" \
  "${REPO_ROOT_GITHUB_ROBOSAX}avr_spielfeld.git")

# omnibot (robosax)
export REPO_ROBOSAX_AVR_OMNIBOT=("${REPO_ROBOSAX_AVR_PATH}omnibot/" \
  "${REPO_ROOT_GITHUB_ROBOSAX}avr_omnibot.git")

#***************************[robosax/projects]
# 2020 09 16

# spielfeld drawings (robosax)
export REPO_ROBOSAX_PROJECTS_SPIELFELD=("${REPO_ROBOSAX_PROJECT_PATH}spielfeld/" \
  "${REPO_ROOT_GITHUB_ROBOSAX}cad_spielfeld.git")

# led-box (fabian) - original repo is from fabian geissler
export REPO_ROBOSAX_PROJECTS_LEDBOX=("${REPO_ROBOSAX_PROJECT_PATH}ledbox/" \
  "${REPO_ROOT_GITHUB_FABIAN}robosax-ledbox.git")
#  "${REPO_ROOT_GITHUB_ROBOSAX}projekt_ledbox.git")

#***************************[robosax/php]
# 2020 09 16

# punkte (robosax)
export REPO_ROBOSAX_PHP_PUNKTE=("${REPO_ROBOSAX_PHP_PATH}punkte/" \
  "${REPO_ROOT_GITHUB_ROBOSAX}php_punkte.git")
export REPO_ROBOSAX_PHP_PUNKTE_OLD=("${REPO_ROBOSAX_PHP_PATH}punkte_old/" \
  "${REPO_ROOT_GITHUB_ROBOSAX}php_punkte_old.git")

# webseite (robosax)
export REPO_ROBOSAX_PHP_WEB_FRAME=("${REPO_ROBOSAX_PHP_PATH}web_frame/" \
  "${REPO_ROOT_GITHUB_ROBOSAX}php_web.git")



#***************************[projects]****************************************
# 2018 03 01

# path
if [ "$REPO_PROJECTS_PATH" == "" ]; then
    export REPO_PROJECTS_PATH="${REPO_PATH_WORKSPACE}projects/"
fi

#***************************[projects/eagle]
# 2018 03 01

# path
if [ "$REPO_PROJECTS_EAGLE_PATH" == "" ]; then
    export REPO_PROJECTS_EAGLE_PATH="${REPO_PROJECTS_PATH}eagle/"
fi

# dmx-driver (peter)
export REPO_EAGLE_DMX_DRIVER=("${REPO_PROJECTS_EAGLE_PATH}dmx_driver/" \
  "${REPO_ROOT_GITHUB_PETER}eagle_dmx_driver.git")

#***************************[projects/hardware]
# 2020 04 19

# path
if [ "$REPO_HARDWARE_PATH" == "" ]; then
    export REPO_HARDWARE_PATH="${REPO_PROJECTS_PATH}hardware/"
fi

# trailer (peter)
export REPO_HARDWARE_TRAILER=("${REPO_HARDWARE_PATH}anhaenger/" \
  "${REPO_ROOT_GITHUB_PETER}project_anhaenger.git")

# audio system (peter)
export REPO_HARDWARE_AUDIO_HOME=("${REPO_HARDWARE_PATH}audio_home/" \
  "${REPO_ROOT_GITHUB_PETER}project_audio_home.git")

# opa (peter)
export REPO_HARDWARE_DMX_OPA=("${REPO_HARDWARE_PATH}dmx_opa/" \
  "${REPO_ROOT_GITHUB_PETER}project_opa.git")

# dimmer (peter)
export REPO_HARDWARE_DIMMER=("${REPO_HARDWARE_PATH}dimmer/" \
  "${REPO_ROOT_GITHUB_PETER}project_dimmer.git")

#***************************[projects/c++]
# 2018 03 01

# paths
if [ "$REPO_CPP_PATH" == "" ]; then
    export REPO_CPP_PATH="${REPO_PROJECTS_PATH}c++/"
fi
if [ "$REPO_CPP_SRC_PATH" == "" ]; then
    export REPO_CPP_SRC_PATH="${REPO_CPP_PATH}src/"
fi

# main (peter)
export REPO_CPP_MAIN=("${REPO_CPP_PATH}" \
  "${REPO_ROOT_GITHUB_PETER}cpp_main.git")

# basic (peter)
export REPO_CPP_BASIC=("${REPO_CPP_SRC_PATH}basic/" \
  "${REPO_ROOT_GITHUB_PETER}cpp_basic.git")

# comport (peter)
export REPO_CPP_COMPORT=("${REPO_CPP_SRC_PATH}comport/" \
  "${REPO_ROOT_GITHUB_PETER}cpp_comport.git")

# file (peter)
export REPO_CPP_FILE=("${REPO_CPP_SRC_PATH}file/" \
  "${REPO_ROOT_GITHUB_PETER}cpp_file.git")

# avr-downloader (peter)
export REPO_CPP_DOWNLOADER=("${REPO_CPP_SRC_PATH}avr_downloader/" \
  "${REPO_ROOT_GITHUB_PETER}cpp_avr_downloader.git")

# xbee-tool (peter)
export REPO_CPP_XBEE=("${REPO_CPP_SRC_PATH}xbee_config/" \
  "${REPO_ROOT_GITHUB_PETER}cpp_xbee_config.git")



#***************************[doc]*********************************************
# 2019 12 23

# paths
if [ "$REPO_DOC_PATH" == "" ]; then
    export REPO_DOC_PATH="${REPO_PATH_WORKSPACE}doc/"
fi
if [ "$REPO_DOC_SERVER_PATH" == "" ]; then
    export REPO_DOC_SERVER_PATH="${REPO_DOC_PATH}server/"
fi

# online-server (peter)
export REPO_DOC_SERVER_ONLINE=( \
  "${REPO_DOC_SERVER_PATH}online/" \
  "${REPO_ROOT_GITHUB_PETER}doc_server_online.git")

# local server (peter)
export REPO_DOC_SERVER_LOCAL=( \
  "${REPO_DOC_SERVER_PATH}local/" \
  "${REPO_ROOT_GITHUB_PETER}doc_server_local.git")

# robolib (roboag)
export REPO_DOC_ROBOLIB=( \
  "${REPO_DOC_PATH}robolib/" \
  "${REPO_ROOT_GITHUB_ROBOAG}doc_robolib.git")

# punkte (robosax)
export REPO_DOC_PUNKTE=( \
  "${REPO_DOC_PATH}punkte/" \
  "${REPO_ROOT_GITHUB_ROBOSAX}doc_punkte.git")



#***************************[ros]*********************************************
# 2018 03 01

# paths
if [ "$REPO_ROS_PATH" == "" ]; then
    export REPO_ROS_PATH="${REPO_PATH_WORKSPACE}ros/"
fi

#***************************[ros-tools-pa]
# 2020 06 19

# paths
if [ "$REPO_ROS_TOOLS_PATH" == "" ]; then
    export REPO_ROS_TOOLS_PATH="${REPO_ROS_PATH}ros-tools-pa/"
fi
export REPO_ROS_TOOLS_SRC_PATH="${REPO_ROS_TOOLS_PATH}src/"

# parameter (TUC-ProAut)
export REPO_ROS_PROAUT_PARAMETER=( \
  "${REPO_ROS_TOOLS_SRC_PATH}parameter_pa/" \
  "${REPO_ROOT_GITHUB_PROAUT}ros_parameter.git")

# pcdfilter (TUC-ProAut)
export REPO_ROS_PROAUT_PCDFILTER=( \
  "${REPO_ROS_TOOLS_SRC_PATH}pcdfilter_pa/" \
  "${REPO_ROOT_GITHUB_PROAUT}ros_pcdfilter.git")

# octomap (TUC-ProAut)
export REPO_ROS_PROAUT_OCTOMAP=( \
  "${REPO_ROS_TOOLS_SRC_PATH}octomap_pa/" \
  "${REPO_ROOT_GITHUB_PROAUT}ros_octomap.git")

# nearfield map (TUC-ProAut)
export REPO_ROS_PROAUT_NEARFIELDMAP=( \
  "${REPO_ROS_TOOLS_SRC_PATH}nearfield_map_pa/" \
  "${REPO_ROOT_GITHUB_PROAUT}ros_nearfield_map.git")

# odometry (TUC-ProAut) -- deprecated
export REPO_ROS_PROAUT_ODOMETRY=( \
  "${REPO_ROS_TOOLS_SRC_PATH}odometry_pa/" \
  "${REPO_ROOT_GITHUB_PROAUT}ros_odometry.git")



#***************************[ros-sensors-pa]
# 2018 06 19

# paths
if [ "$REPO_ROS_SENSORS_PATH" == "" ]; then
    export REPO_ROS_SENSORS_PATH="${REPO_ROS_PATH}ros-sensors-pa/"
fi
export REPO_ROS_SENSORS_SRC_PATH="${REPO_ROS_SENSORS_PATH}src/"

# radar (TUC-ProAut)
export REPO_ROS_PROAUT_RADAR=( \
  "${REPO_ROS_SENSORS_SRC_PATH}radar_pa/" \
  "${REPO_ROOT_GITHUB_PROAUT}ros_radar.git")

