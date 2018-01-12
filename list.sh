#***************************[needed external variables]***********************
# 2018 01 05

# REPO_PATH_WORKSPACE



#***************************[server]******************************************
# 2018 01 01

export REPO_ROOT_GITHUB_URL="https://github.com/peterweissig/"



#***************************[bash]********************************************
# 2018 01 11

# paths
export REPO_BASH_PATH="${REPO_PATH_WORKSPACE}bash/"

# repositories (github)
export REPO_BASH_REPO=("${REPO_BASH_PATH}repo/" \
  "${REPO_ROOT_GITHUB_URL}bash_repo.git")

# config functions (github)
export REPO_BASH_CONFIG=("${REPO_BASH_PATH}config/" \
  "${REPO_ROOT_GITHUB_URL}bash_config.git")

# network functions (github)
export REPO_BASH_NETWORK=("${REPO_BASH_PATH}network/" \
  "${REPO_ROOT_GITHUB_URL}bash_network.git")

# multimedia (github)
export REPO_BASH_MULTIMEDIA=("${REPO_BASH_PATH}multimedia/" \
  "${REPO_ROOT_GITHUB_URL}bash_multimedia.git")

# roboag (github)
export REPO_BASH_ROBOAG=("${REPO_BASH_PATH}roboag/" \
  "${REPO_ROOT_GITHUB_URL}bash_roboag.git")


#***************************[robo]********************************************
# 2018 01 08

# paths
export REPO_ROBO_PATH="${REPO_PATH_WORKSPACE}robo/"

# robolib (github)
export REPO_ROBO_LIB=("${REPO_ROBO_PATH}library/" \
  "${REPO_ROOT_GITHUB_URL}robolib.git")

# pololu (extern)
export REPO_ROBO_POLOLU=("${REPO_ROBO_PATH}pololu/" \
  "https://github.com/pololu/libpololu-avr.git")


# bash roboag (github)
export REPO_ROBO_ROBOAG_BASH=("${REPO_ROBO_PATH}roboag_bash/" \
  "${REPO_ROOT_GITHUB_URL}bash_roboag.git")


# eagle (github)
export REPO_EAGLE_PATH="${REPO_ROBO_PATH}eagle/"

export REPO_EAGLE_CONFIG=("${REPO_EAGLE_PATH}config/" \
  "${REPO_ROOT_GITHUB_URL}eagle_config.git")

export REPO_EAGLE_KEPLERBOARD=("${REPO_EAGLE_PATH}keplerboard/" \
  "${REPO_ROOT_GITHUB_URL}eagle_keplerboard.git")

export REPO_EAGLE_XBEE=("${REPO_EAGLE_PATH}xbee/" \
  "${REPO_ROOT_GITHUB_URL}eagle_xbee.git")

export REPO_EAGLE_LOGIC=("${REPO_EAGLE_PATH}logic/" \
  "${REPO_ROOT_GITHUB_URL}eagle_logic.git")

export REPO_EAGLE_VTGMON=("${REPO_EAGLE_PATH}vtgMon/" \
  "${REPO_ROOT_GITHUB_URL}eagle_voltageMonitoring.git")

export REPO_EAGLE_DIMMER=("${REPO_EAGLE_PATH}dimmer/" \
  "${REPO_ROOT_GITHUB_URL}project_dimmer.git")


# robosax (github)
export REPO_ROBOSAX_PATH="${REPO_ROBO_PATH}robosax/"

export REPO_ROBOSAX_LEDBOX=("${REPO_ROBOSAX_PATH}ledbox/" \
  "https://github.com/fabiangeissler/robosax-ledbox.git")

export REPO_ROBOSAX_LICHT=("${REPO_ROBOSAX_PATH}licht_tht/" \
  "${REPO_ROOT_GITHUB_URL}eagle_robosax_licht.git")

export REPO_ROBOSAX_POINTS=("${REPO_ROBOSAX_PATH}punkte/" \
  "${REPO_ROOT_GITHUB_URL}php_robosax_punkte")



#***************************[c++]*********************************************
# 2018 01 05

# paths
export REPO_CPP_PATH="${REPO_PATH_WORKSPACE}c++/"
export REPO_CPP_SRC_PATH="${REPO_CPP_PATH}src/"

# main (github)
export REPO_CPP_MAIN=("${REPO_CPP_PATH}" \
  "${REPO_ROOT_GITHUB_URL}cpp_main.git")

# basic (github)
export REPO_CPP_BASIC=("${REPO_CPP_SRC_PATH}basic/" \
  "${REPO_ROOT_GITHUB_URL}cpp_basic.git")

# comport (github)
export REPO_CPP_COMPORT=("${REPO_CPP_SRC_PATH}comport/" \
  "${REPO_ROOT_GITHUB_URL}cpp_comport.git")

# file (github)
export REPO_CPP_FILE=("${REPO_CPP_SRC_PATH}file/" \
  "${REPO_ROOT_GITHUB_URL}cpp_file.git")

# avr-downloader (github)
export REPO_CPP_DOWNLOADER=("${REPO_CPP_SRC_PATH}avr_downloader/" \
  "${REPO_ROOT_GITHUB_URL}cpp_avr_downloader.git")

# xbee-tool (github)
export REPO_CPP_XBEE=("${REPO_CPP_SRC_PATH}xbee_config/" \
  "${REPO_ROOT_GITHUB_URL}cpp_xbee_config.git")



#***************************[ros]*********************************************
# 2018 01 05

# paths
export REPO_ROS_PATH="${REPO_PATH_WORKSPACE}ros/"

# github
export REPO_ROS_GITHUB_PATH="${REPO_ROS_PATH}github/"
export REPO_ROS_GITHUB_SRC_PATH="${REPO_ROS_GITHUB_PATH}src/"

export REPO_ROS_GITHUB_PARAMETER=("${REPO_ROS_GITHUB_SRC_PATH}parameter/" \
  "${REPO_ROOT_GITHUB_URL}ros_parameter.git")

export REPO_ROS_GITHUB_PCDFILTER=("${REPO_ROS_GITHUB_SRC_PATH}pcd-filter/" \
  "${REPO_ROOT_GITHUB_URL}ros_pcdfilter.git")

export REPO_ROS_GITHUB_OCTOMAP=("${REPO_ROS_GITHUB_SRC_PATH}octomap/" \
  "${REPO_ROOT_GITHUB_URL}ros_octomap.git")

export REPO_ROS_GITHUB_NEARFIELDMAP=( \
  "${REPO_ROS_GITHUB_SRC_PATH}nearfield_map/" \
  "${REPO_ROOT_GITHUB_URL}ros_nearfield_map.git")


