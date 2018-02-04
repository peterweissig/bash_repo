#***************************[needed external variables]***********************
# 2018 01 05

# REPO_PATH_WORKSPACE



#***************************[server]******************************************
# 2018 02 04

export REPO_ROOT_GITHUB_PETER="https://github.com/peterweissig/"
export REPO_ROOT_GITHUB_ROBOAG="https://github.com/roboag/"



#***************************[bash]********************************************
# 2018 01 11

# paths
export REPO_BASH_PATH="${REPO_PATH_WORKSPACE}bash/"

# repositories (github)
export REPO_BASH_REPO=("${REPO_BASH_PATH}repo/" \
  "${REPO_ROOT_GITHUB_PETER}bash_repo.git")

# config functions (github)
export REPO_BASH_CONFIG=("${REPO_BASH_PATH}config/" \
  "${REPO_ROOT_GITHUB_PETER}bash_config.git")

# network functions (github)
export REPO_BASH_NETWORK=("${REPO_BASH_PATH}network/" \
  "${REPO_ROOT_GITHUB_PETER}bash_network.git")

# multimedia (github)
export REPO_BASH_MULTIMEDIA=("${REPO_BASH_PATH}multimedia/" \
  "${REPO_ROOT_GITHUB_PETER}bash_multimedia.git")

# roboag (github)
export REPO_BASH_ROBOAG=("${REPO_BASH_PATH}roboag/" \
  "${REPO_ROOT_GITHUB_PETER}bash_roboag.git")


#***************************[robo]********************************************
# 2018 01 30

# paths
export REPO_ROBO_PATH="${REPO_PATH_WORKSPACE}robo/"

# robolib (github)
export REPO_ROBO_LIB=("${REPO_ROBO_PATH}library/" \
  "${REPO_ROOT_GITHUB_PETER}robolib.git")

# pololu (extern)
export REPO_ROBO_POLOLU=("${REPO_ROBO_PATH}pololu/" \
  "https://github.com/pololu/libpololu-avr.git")

#***************************[robo/eagle]
# 2018 01 30


export REPO_ROBO_EAGLE_PATH="${REPO_ROBO_PATH}eagle/"

export REPO_ROBO_EAGLE_CONFIG=("${REPO_ROBO_EAGLE_PATH}config/" \
  "${REPO_ROOT_GITHUB_PETER}eagle_config.git")

export REPO_ROBO_EAGLE_KEPLERBOARD=("${REPO_ROBO_EAGLE_PATH}keplerboard/" \
  "${REPO_ROOT_GITHUB_PETER}eagle_keplerboard.git")

export REPO_ROBO_EAGLE_XBEE=("${REPO_ROBO_EAGLE_PATH}xbee/" \
  "${REPO_ROOT_GITHUB_PETER}eagle_xbee.git")

export REPO_ROBO_EAGLE_LOGIC=("${REPO_ROBO_EAGLE_PATH}logic/" \
  "${REPO_ROOT_GITHUB_PETER}eagle_logic.git")

export REPO_ROBO_EAGLE_VTGMON=("${REPO_ROBO_EAGLE_PATH}vtgMon/" \
  "${REPO_ROOT_GITHUB_PETER}eagle_voltageMonitoring.git")

#***************************[robo/robosax]
# 2018 01 30

export REPO_ROBOSAX_PATH="${REPO_ROBO_PATH}robosax/"

export REPO_ROBOSAX_LEDBOX=("${REPO_ROBOSAX_PATH}ledbox/" \
  "https://github.com/fabiangeissler/robosax-ledbox.git")

export REPO_ROBOSAX_LICHT_THT=("${REPO_ROBOSAX_PATH}licht_tht/" \
  "${REPO_ROOT_GITHUB_PETER}eagle_robosax_licht.git")

export REPO_ROBOSAX_LICHT_AVR=("${REPO_ROBOSAX_PATH}licht_avr/" \
  "${REPO_ROOT_GITHUB_PETER}avr_robosax_licht.git")

export REPO_ROBOSAX_POINTS=("${REPO_ROBOSAX_PATH}punkte/" \
  "${REPO_ROOT_GITHUB_PETER}php_robosax_punkte")

#***************************[robo/roboag]
# 2018 02 04

export REPO_ROBOAG_PATH="${REPO_ROBO_PATH}roboag/"

export REPO_ROBOAG_GLUECKSRAD=("${REPO_ROBOAG_PATH}gluecksrad/" \
  "${REPO_ROOT_GITHUB_ROBOAG}projekt_gluecksrad.git")

export REPO_ROBOAG_3PI=("${REPO_ROBOAG_PATH}3pi/" \
  "${REPO_ROOT_GITHUB_ROBOAG}projekt_3pi.git")



#***************************[projects]****************************************
# paths
export REPO_PROJECTS_PATH="${REPO_PATH_WORKSPACE}projects/"

#***************************[projects/eagle]
# 2018 01 30

export REPO_PROJECTS_EAGLE_PATH="${REPO_PROJECTS_PATH}eagle/"

export REPO_EAGLE_DMX_DRIVER=("${REPO_PROJECTS_EAGLE_PATH}dmx_driver/" \
  "${REPO_ROOT_GITHUB_PETER}eagle_dmx_driver.git")

export REPO_EAGLE_DMX_OPA=("${REPO_PROJECTS_EAGLE_PATH}dmx_opa/" \
  "${REPO_ROOT_GITHUB_PETER}eagle_dmx_opa.git")

#***************************[projects/hardware]
# 2018 01 30

export REPO_HARDWARE_PATH="${REPO_PROJECTS_PATH}hardware/"

export REPO_HARDWARE_AUDIO_HOME=("${REPO_HARDWARE_PATH}audio_home/" \
  "${REPO_ROOT_GITHUB_PETER}proj_audio_home.git")

export REPO_HARDWARE_DIMMER=("${REPO_HARDWARE_PATH}dimmer/" \
  "${REPO_ROOT_GITHUB_PETER}project_dimmer.git")

#***************************[projects/c++]
# 2018 01 30

# paths
export REPO_CPP_PATH="${REPO_PROJECTS_PATH}c++/"
export REPO_CPP_SRC_PATH="${REPO_CPP_PATH}src/"

# main (github)
export REPO_CPP_MAIN=("${REPO_CPP_PATH}" \
  "${REPO_ROOT_GITHUB_PETER}cpp_main.git")

# basic (github)
export REPO_CPP_BASIC=("${REPO_CPP_SRC_PATH}basic/" \
  "${REPO_ROOT_GITHUB_PETER}cpp_basic.git")

# comport (github)
export REPO_CPP_COMPORT=("${REPO_CPP_SRC_PATH}comport/" \
  "${REPO_ROOT_GITHUB_PETER}cpp_comport.git")

# file (github)
export REPO_CPP_FILE=("${REPO_CPP_SRC_PATH}file/" \
  "${REPO_ROOT_GITHUB_PETER}cpp_file.git")

# avr-downloader (github)
export REPO_CPP_DOWNLOADER=("${REPO_CPP_SRC_PATH}avr_downloader/" \
  "${REPO_ROOT_GITHUB_PETER}cpp_avr_downloader.git")

# xbee-tool (github)
export REPO_CPP_XBEE=("${REPO_CPP_SRC_PATH}xbee_config/" \
  "${REPO_ROOT_GITHUB_PETER}cpp_xbee_config.git")



#***************************[ros]*********************************************
# 2018 01 05

# paths
export REPO_ROS_PATH="${REPO_PATH_WORKSPACE}ros/"

# github
export REPO_ROS_GITHUB_PATH="${REPO_ROS_PATH}github/"
export REPO_ROS_GITHUB_SRC_PATH="${REPO_ROS_GITHUB_PATH}src/"

export REPO_ROS_GITHUB_PARAMETER=("${REPO_ROS_GITHUB_SRC_PATH}parameter/" \
  "${REPO_ROOT_GITHUB_PETER}ros_parameter.git")

export REPO_ROS_GITHUB_PCDFILTER=("${REPO_ROS_GITHUB_SRC_PATH}pcd-filter/" \
  "${REPO_ROOT_GITHUB_PETER}ros_pcdfilter.git")

export REPO_ROS_GITHUB_OCTOMAP=("${REPO_ROS_GITHUB_SRC_PATH}octomap/" \
  "${REPO_ROOT_GITHUB_PETER}ros_octomap.git")

export REPO_ROS_GITHUB_NEARFIELDMAP=( \
  "${REPO_ROS_GITHUB_SRC_PATH}nearfield_map/" \
  "${REPO_ROOT_GITHUB_PETER}ros_nearfield_map.git")


