#!/bin/bash

#***************************[needed external variables]***********************
# 2018 01 05

# REPO_PATH_WORKSPACE



#***************************[server]******************************************
# 2024 01 26

export REPO_ROOT_GITHUB_PETER="https://github.com/peterweissig/"
export REPO_ROOT_GITHUB_FABIAN="https://github.com/fabiangeissler/"

export REPO_ROOT_GITHUB_ROBOAG="https://github.com/RoboAG/"
export REPO_ROOT_GITHUB_ROBOSAX="https://github.com/RoboSAX/"

export REPO_ROOT_GITHUB_ROBERTA="https://github.com/OpenRoberta/"
export REPO_ROOT_GITHUB_ADAFRUIT="https://github.com/Adafruit/"
export REPO_ROOT_GITHUB_MBLOCK="https://github.com/Makeblock-official/"



#***************************[bash]********************************************
# 2024 01 26

# path
if [ "$REPO_BASH_PATH" == "" ]; then
    export REPO_BASH_PATH="${REPO_PATH_WORKSPACE}bash/"
fi

# repositories functions (peter)
_repo_add "${REPO_BASH_PATH}repo/" \
  "${REPO_ROOT_GITHUB_PETER}bash_repo.git" \
  "bash_repo" "bash/repo"

# config functions (peter)
_repo_add "${REPO_BASH_PATH}config/" \
  "${REPO_ROOT_GITHUB_PETER}bash_config.git" \
  "bash_config" "bash/config"

# network functions (peter)
_repo_add "${REPO_BASH_PATH}network/" \
  "${REPO_ROOT_GITHUB_PETER}bash_network.git" \
  "bash_network" "bash/network"

# multimedia functions (peter)
_repo_add "${REPO_BASH_PATH}multimedia/" \
  "${REPO_ROOT_GITHUB_PETER}bash_multimedia.git" \
  "bash_multimedia" "bash/multimedia"

# file functions (peter)
_repo_add "${REPO_BASH_PATH}file/" \
  "${REPO_ROOT_GITHUB_PETER}bash_file.git" \
  "bash_file" "bash/file"

#***************************[bash/master]
# 2024 01 26

# path
if [ "$REPO_BASH_MASTER_PATH" == "" ]; then
    export REPO_BASH_MASTER_PATH="${REPO_BASH_PATH}master/"
fi

# master simple (peter)
_repo_add "${REPO_BASH_MASTER_PATH}bash_only/" \
  "${REPO_ROOT_GITHUB_PETER}bash_master_simple.git" \
  "bash_master_simple" "master/simple"
export REPO_BASH_MASTER_BASHONLY=(${REPO_BASH_MASTER_SIMPLE[*]})

# master server (peter)
_repo_add "${REPO_BASH_MASTER_PATH}server/" \
  "${REPO_ROOT_GITHUB_PETER}bash_master_server.git" \
  "bash_master_server" "master/server"

# roboag (roboag)
_repo_add "${REPO_BASH_MASTER_PATH}roboag/" \
  "${REPO_ROOT_GITHUB_ROBOAG}bash_roboag.git" \
  "bash_roboag" "master/roboag"
export REPO_BASH_MASTER_ROBOAG=(${REPO_BASH_ROBOAG[*]})



#***************************[roboag]******************************************
# 2024 01 26

# path
if [ "$REPO_ROBOAG_PATH" == "" ]; then
    export REPO_ROBOAG_PATH="${REPO_PATH_WORKSPACE}roboag/"
fi

if [ "$REPO_ROBOAG_ROBERTA_PATH" == "" ]; then
    export REPO_ROBOAG_ROBERTA_PATH="${REPO_ROBOAG_PATH}roberta/"
fi
if [ "$REPO_ROBOAG_MBLOCK_PATH" == "" ]; then
    export REPO_ROBOAG_MBLOCK_PATH="${REPO_ROBOAG_PATH}mblock/"
fi
if [ "$REPO_ROBOAG_DOC_PATH" == "" ]; then
    export REPO_ROBOAG_DOC_PATH="${REPO_ROBOAG_PATH}doc/"
fi
if [ "$REPO_ROBOAG_EAGLE_PATH" == "" ]; then
    export REPO_ROBOAG_EAGLE_PATH="${REPO_ROBOAG_PATH}eagle/"
fi
if [ "$REPO_ROBOAG_PROJECTS_PATH" == "" ]; then
    export REPO_ROBOAG_PROJECTS_PATH="${REPO_ROBOAG_PATH}projects/"
fi
if [ "$REPO_ROBOAG_PHP_PATH" == "" ]; then
    export REPO_ROBOAG_PHP_PATH="${REPO_ROBOAG_PATH}php/"
fi

# robolib (roboag)
_repo_add "${REPO_ROBOAG_PATH}library/" \
  "${REPO_ROOT_GITHUB_ROBOAG}avr_robolib.git" \
  "roboag_lib" "robolib"

# pololu (extern)
_repo_add "${REPO_ROBOAG_PATH}pololu/" \
  "https://github.com/pololu/libpololu-avr.git" \
  "roboag_pololu" "robo/pololu"

#***************************[roboag/roberta]
# 2024 01 26

# connector (open-roberta)
_repo_add "${REPO_ROBOAG_ROBERTA_PATH}connector/" \
  "${REPO_ROOT_GITHUB_ROBERTA}openroberta-connector.git" \
  "roboag_roberta_connector" "roberta/connector"

# server (open-roberta)
_repo_add --quiet "${REPO_ROBOAG_ROBERTA_PATH}server/" \
  "${REPO_ROOT_GITHUB_ROBERTA}openroberta-lab.git" \
  "roboag_roberta_server" "roberta/server"

#***************************[roboag/mblock]
# 2024 01 26

# arduino (mblock)
_repo_add "${REPO_ROBOAG_MBLOCK_PATH}arduino/" \
  "${REPO_ROOT_GITHUB_MBLOCK}makeblock-libraries.git" \
  "roboag_mblock_arduino" "mblock/arduino"

# mbot (mblock)
_repo_add "${REPO_ROBOAG_MBLOCK_PATH}mbot/" \
  "${REPO_ROOT_GITHUB_MBLOCK}mBot.git" \
  "roboag_mblock_mbot" "mblock/mbot"

# BusIO (adafruit)
_repo_add "${REPO_ROBOAG_MBLOCK_PATH}sensors/busio/" \
  "${REPO_ROOT_GITHUB_ADAFRUIT}Adafruit_BusIO.git" \
  "roboag_adafruit_busio" "adafruit/busio"

# Sensor TCS34725 (adafruit)
_repo_add "${REPO_ROBOAG_MBLOCK_PATH}sensors/color_sensor/" \
  "${REPO_ROOT_GITHUB_ADAFRUIT}Adafruit_TCS34725.git" \
  "roboag_adafruit_color_sensor" "adafruit/color_sensor"

#***************************[roboag/doc]
# 2024 01 26

# robolib (roboag)
_repo_add --release "${REPO_ROBOAG_DOC_PATH}robolib/" \
  "${REPO_ROOT_GITHUB_ROBOAG}doc_robolib.git" \
  "roboag_doc_robolib" "doc/robolib"

# install (roboag)
_repo_add "${REPO_ROBOAG_DOC_PATH}install/" \
  "${REPO_ROOT_GITHUB_ROBOAG}doc_install.git" \
  "roboag_doc_install" "doc/install_roboag"

#***************************[roboag/eagle]
# 2024 01 26

# config (roboag)
_repo_add "${REPO_ROBOAG_EAGLE_PATH}config/" \
  "${REPO_ROOT_GITHUB_ROBOAG}eagle_config.git" \
  "roboag_eagle_config" "eagle/config"

# keplerboard (roboag)
_repo_add "${REPO_ROBOAG_EAGLE_PATH}keplerboard/" \
  "${REPO_ROOT_GITHUB_ROBOAG}eagle_keplerboard.git" \
  "roboag_eagle_keplerboard" "eagle/keplerboard"

# xbee (roboag)
_repo_add "${REPO_ROBOAG_EAGLE_PATH}xbee/" \
  "${REPO_ROOT_GITHUB_ROBOAG}eagle_xbee.git" \
  "roboag_eagle_xbee" "eagle/xbee"

# logic (roboag)
_repo_add "${REPO_ROBOAG_EAGLE_PATH}logic/" \
  "${REPO_ROOT_GITHUB_ROBOAG}eagle_logic.git" \
  "roboag_eagle_logic" "eagle/logic"

# voltage monitor (roboag)
_repo_add "${REPO_ROBOAG_EAGLE_PATH}vtgMon/" \
  "${REPO_ROOT_GITHUB_ROBOAG}eagle_voltageMonitoring.git" \
  "roboag_eagle_vtgMon" "eagle/vtgMon"

#***************************[roboag/projects]
# 2024 01 26

# display (roboag)
_repo_add "${REPO_ROBOAG_PROJECTS_PATH}rotierendes_display/" \
  "${REPO_ROOT_GITHUB_ROBOAG}projekt_display.git" \
  "roboag_projects_display" "projects/display"

# gluecksrad (roboag)
_repo_add "${REPO_ROBOAG_PROJECTS_PATH}gluecksrad/" \
  "${REPO_ROOT_GITHUB_ROBOAG}projekt_gluecksrad.git" \
  "roboag_projects_gluecksrad" "projects/glücksrad"

# 3pi modification (roboag)
_repo_add "${REPO_ROBOAG_PROJECTS_PATH}3pi/" \
  "${REPO_ROOT_GITHUB_ROBOAG}projekt_3pi.git" \
  "roboag_projects_3pi" "projects/3pi"

# roboter (roboag)
_repo_add "${REPO_ROBOAG_PROJECTS_PATH}roboter/" \
  "${REPO_ROOT_GITHUB_ROBOAG}projekt_roboter.git" \
  "roboag_projects_roboter" "projects/roboter"

#***************************[roboag/php]
# 2024 01 26

# filebrowser (roboag)
_repo_add "${REPO_ROBOAG_PHP_PATH}filebrowser/" \
  "${REPO_ROOT_GITHUB_ROBOAG}php_filebrowser.git" \
  "roboag_php_filebrowser" "php/filebrowser"



#***************************[robosax]*****************************************
# 2020 09 27

# path
if [ "$REPO_ROBOSAX_PATH" == "" ]; then
    export REPO_ROBOSAX_PATH="${REPO_PATH_WORKSPACE}robosax/"
fi

if [ "$REPO_ROBOSAX_DOC_PATH" == "" ]; then
    export REPO_ROBOSAX_DOC_PATH="${REPO_ROBOSAX_PATH}doc/"
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

#***************************[robosax/doc]
# 2024 01 25

# punkte (robosax)
_repo_add --release "${REPO_ROBOSAX_DOC_PATH}punkte/" \
  "${REPO_ROOT_GITHUB_ROBOSAX}doc_punkte.git" \
  "robosax_doc_punkte" "doc/punkte"

#***************************[robosax/eagle]
# 2024 01 26

# spielfeld circuit (robosax)
_repo_add "${REPO_ROBOSAX_EAGLE_PATH}spielfeld/" \
  "${REPO_ROOT_GITHUB_ROBOSAX}eagle_spielfeld.git" \
  "robosax_eagle_spielfeld" "eagle/spielfeld"

# licht-tht circuit (robosax)
_repo_add "${REPO_ROBOSAX_EAGLE_PATH}licht/" \
  "${REPO_ROOT_GITHUB_ROBOSAX}eagle_licht.git" \
  "robosax_eagle_licht" "eagle/licht"

# anzeige circuit (robosax)
_repo_add "${REPO_ROBOSAX_EAGLE_PATH}anzeige/" \
  "${REPO_ROOT_GITHUB_ROBOSAX}eagle_anzeige.git" \
  "robosax_eagle_anzeige" "eagle/anzeige"

#***************************[robosax/avr]
# 2024 01 26

# spielfeld software (robosax)
_repo_add "${REPO_ROBOSAX_AVR_PATH}spielfeld/" \
  "${REPO_ROOT_GITHUB_ROBOSAX}avr_spielfeld.git" \
  "robosax_avr_spielfeld" "avr/spielfeld"

# omnibot (robosax)
_repo_add "${REPO_ROBOSAX_AVR_PATH}omnibot/" \
  "${REPO_ROOT_GITHUB_ROBOSAX}avr_omnibot.git" \
  "robosax_avr_omnibot" "avr/omnibot"

#***************************[robosax/projects]
# 2024 01 26

# spielfeld drawings (robosax)
_repo_add "${REPO_ROBOSAX_PROJECT_PATH}spielfeld/" \
  "${REPO_ROOT_GITHUB_ROBOSAX}cad_spielfeld.git" \
  "robosax_projects_spielfeld" "projects/spielfeld"

# led-box (fabian) - original repo is from fabian geissler
_repo_add "${REPO_ROBOSAX_PROJECT_PATH}ledbox/" \
  "${REPO_ROOT_GITHUB_FABIAN}robosax-ledbox.git" \
  "robosax_projects_ledbox" "projects/ledbox"
#  "${REPO_ROOT_GITHUB_ROBOSAX}projekt_ledbox.git"

#***************************[robosax/php]
# 2024 01 26

# punkte (robosax)
_repo_add "${REPO_ROBOSAX_PHP_PATH}punkte/" \
  "${REPO_ROOT_GITHUB_ROBOSAX}php_punkte.git" \
  "robosax_php_punkte" "php/punkte"
_repo_add "${REPO_ROBOSAX_PHP_PATH}punkte_old/" \
  "${REPO_ROOT_GITHUB_ROBOSAX}php_punkte_old.git" \
  "robosax_php_punkte_old" "php/punkte_old"

# webseite (robosax)
_repo_add "${REPO_ROBOSAX_PHP_PATH}web_frame/" \
  "${REPO_ROOT_GITHUB_ROBOSAX}php_web.git" \
  "robosax_php_web_frame" "php/web_frame"



#***************************[projects]****************************************
# 2018 03 01

# path
if [ "$REPO_PROJECTS_PATH" == "" ]; then
    export REPO_PROJECTS_PATH="${REPO_PATH_WORKSPACE}projects/"
fi

#***************************[projects/eagle]
# 2024 01 26

# path
if [ "$REPO_PROJECTS_EAGLE_PATH" == "" ]; then
    export REPO_PROJECTS_EAGLE_PATH="${REPO_PROJECTS_PATH}eagle/"
fi

# dmx-driver (peter)
_repo_add "${REPO_PROJECTS_EAGLE_PATH}dmx_driver/" \
  "${REPO_ROOT_GITHUB_PETER}eagle_dmx_driver.git" \
  "eagle_dmx_driver" "eagle/dmx_driver"

#***************************[projects/hardware]
# 2024 01 26

# path
if [ "$REPO_HARDWARE_PATH" == "" ]; then
    export REPO_HARDWARE_PATH="${REPO_PROJECTS_PATH}hardware/"
fi

# trailer (peter)
_repo_add "${REPO_HARDWARE_PATH}anhaenger/" \
  "${REPO_ROOT_GITHUB_PETER}project_anhaenger.git" \
  "hardware_trailer" "hardware/trailer"

# audio system (peter)
_repo_add "${REPO_HARDWARE_PATH}audio_home/" \
  "${REPO_ROOT_GITHUB_PETER}project_audio_home.git" \
   "hardware_audio_home" "hardware/audio_home"

# opa (peter)
_repo_add "${REPO_HARDWARE_PATH}dmx_opa/" \
  "${REPO_ROOT_GITHUB_PETER}project_opa.git" \
   "hardware_dmx_opa" "hardware/dmx_opa"

# dimmer (peter)
_repo_add "${REPO_HARDWARE_PATH}dimmer/" \
  "${REPO_ROOT_GITHUB_PETER}project_dimmer.git" \
   "hardware_dimmer" "hardware/dimmer"

#***************************[projects/c++]
# 2024 01 26

# paths
if [ "$REPO_CPP_PATH" == "" ]; then
    export REPO_CPP_PATH="${REPO_PROJECTS_PATH}c++/"
fi

# avr-downloader (peter)
_repo_add "${REPO_CPP_PATH}avr_downloader/" \
  "${REPO_ROOT_GITHUB_PETER}cpp_avr_downloader.git" \
  "cpp_avr_downloader" "cpp/avr_downloader"



#***************************[doc]*********************************************
# 2024 01 26

# paths
if [ "$REPO_DOC_PATH" == "" ]; then
    export REPO_DOC_PATH="${REPO_PATH_WORKSPACE}doc/"
fi
if [ "$REPO_DOC_SERVER_PATH" == "" ]; then
    export REPO_DOC_SERVER_PATH="${REPO_DOC_PATH}server/"
fi

# online-server (peter)
_repo_add "${REPO_DOC_SERVER_PATH}online/" \
  "${REPO_ROOT_GITHUB_PETER}doc_server_online.git" \
  "doc_server_online" "doc/server_online"

# local server (peter)
_repo_add "${REPO_DOC_SERVER_PATH}local/" \
  "${REPO_ROOT_GITHUB_PETER}doc_server_local.git" \
  "doc_server_local" "doc/server_local"

