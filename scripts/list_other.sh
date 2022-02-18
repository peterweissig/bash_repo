#!/bin/bash

#***************************[needed external variables]***********************
# 2018 01 05

# REPO_PATH_WORKSPACE



#***************************[optional external variables]*********************
# 2020 10 11

# REPO_MODE



#***************************[check for roboag structure]**********************
# 2022 02 18

if [ "$REPO_MODE" == "roboag" ]; then

    # avr
    if [ "$REPO_ROBOAG_PATH" == "" ]; then
        export REPO_ROBOAG_PATH="${REPO_PATH_WORKSPACE}WinAVR/"
            # robolib
            # pololu

        if [ "$REPO_ROBOSAX_AVR_PATH" == "" ]; then
            export REPO_ROBOSAX_AVR_PATH="${REPO_ROBOAG_PATH}RoboSAX/"
                # spielfeld
                # omnibot
        fi
    fi

    # eagle
    if [ "$REPO_ROBOAG_EAGLE_PATH" == "" ]; then
        temp="${REPO_PATH_WORKSPACE}Eagle/"
        export REPO_ROBOAG_EAGLE_PATH="${temp}"
            # config
            # keplerboard
            # xbee
            # logic
            # vtgMon

        if [ "$REPO_ROBOSAX_EAGLE_PATH" == "" ]; then
            export REPO_ROBOSAX_EAGLE_PATH="${temp}RoboSAX/"
                # spielfeld
                # licht
                # anzeige
        fi

        if [ "$REPO_PROJECTS_EAGLE_PATH" == "" ]; then
            export REPO_PROJECTS_EAGLE_PATH="${temp}Peter/"
                # dmx_driver
        fi
    fi

    # projects
    if [ "$REPO_ROBOAG_PROJECTS_PATH" == "" ]; then
        export REPO_ROBOAG_PROJECTS_PATH="${REPO_PATH_WORKSPACE}Projekte/"
            # display
            # gluecksrad
            # 3pi
            # roboter

        if [ "$REPO_ROBOSAX_PROJECT_PATH" == "" ]; then
            temp="${REPO_ROBOAG_PROJECTS_PATH}RoboSAX/"
            export REPO_ROBOSAX_PROJECT_PATH="$temp"
                # spielfeld
                # ledbox
        fi

        if [ "$REPO_HARDWARE_PATH" == "" ]; then
            export REPO_HARDWARE_PATH="${REPO_ROBOAG_PROJECTS_PATH}Peter/"
                # anhaenger
                # home-audio
                # opa
                # dimmer
        fi
    fi


    # c++
    if [ "$REPO_CPP_PATH" == "" ]; then
        export REPO_CPP_PATH="${REPO_PATH_WORKSPACE}C++/"
            # avr_downloader
    fi

    # ros
    if [ "$REPO_ROS_PATH" == "" ]; then
        export REPO_ROS_PATH="${REPO_PATH_WORKSPACE}ROS/"
            # ros-tools-pa
                # parameter
                # pcdfilter
                # octomap
                # nearfield_map
            # ros-sensors-pa
                # radar
    fi

    # php
    if [ "$REPO_ROBOAG_PHP_PATH" == "" ]; then
        temp="${REPO_PATH_WORKSPACE}PHP/"
        export REPO_ROBOAG_PHP_PATH="${temp}"
            # filebrowser

        if [ "$REPO_ROBOSAX_PHP_PATH" == "" ]; then
            export REPO_ROBOSAX_PHP_PATH="${temp}"
                # Punkte RoboSAX
                # Punkte RoboSAX (old version)
                # Web Frame
        fi
    fi

    # doc
    if [ "$REPO_DOC_PATH" == "" ]; then
        export REPO_DOC_PATH="${REPO_PATH_WORKSPACE}Dokumentation/"
            # online server
            # local server

        if [ "$REPO_ROBOAG_DOC_PATH" == "" ]; then
            export REPO_ROBOAG_DOC_PATH="${REPO_DOC_PATH}"
                # robolib
                # install
        fi

        if [ "$REPO_ROBOSAX_DOC_PATH" == "" ]; then
            export REPO_ROBOSAX_DOC_PATH="${REPO_DOC_PATH}RoboSAX/"
                # punkte
        fi
    fi
fi
