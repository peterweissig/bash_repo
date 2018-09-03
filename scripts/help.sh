#!/bin/bash

#***************************[overview]****************************************
# 2018 09 03

function repo_help_overview() {

    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME needs 0 parameters"
        echo "Prints an overview of all available repositories."

        return
    fi

    # check parameter
    if [ $# -gt 0 ]; then
        echo "$FUNCNAME: Parameter Error."
        $FUNCNAME --help
        return -1
    fi

    # print overview of all repositories
    echo ""
    echo "### $FUNCNAME ###"
    echo ""
    echo "structure of all listed repositories:"
    echo "  [git] == https://github.com/"
    echo ""
    echo "  bash/"
    echo "      repo/               [git]/peterweissig/bash_repo.git"
    echo "      config/             [git]/peterweissig/bash_config.git"
    echo "      network/            [git]/peterweissig/bash_network.git"
    echo "      multimedia/         [git]/peterweissig/bash_multimedia.git"
    echo "      roboag/             [git]/RoboAG/bash_roboag.git"
    echo ""
    echo "  robo/"
    echo "      lib/                [git]/RoboAG/avr_robolib.git"
    echo "      pololu/             [git]/pololu/libpololu-avr"
    echo ""
    echo "      eagle/"
    echo "          config/         [git]/RoboAG/eagle_config.git"
    echo "          keplerboard/    [git]/RoboAG/eagle_keplerboard.git"
    echo "          xbee/           [git]/RoboAG/eagle_xbee.git"
    echo "          logic/          [git]/RoboAG/eagle_logic.git"
    echo "          vtgMon/         [git]/RoboAG/eagle_voltageMonitoring.git"
    echo ""
    echo "      roboag/"
    echo "          rotierendes_display/ [git]/RoboAG/projekt_display.git"
    echo "          gluecksrad/     [git]/RoboAG/projekt_gluecksrad.git"
    echo "          3pi/            [git]/RoboAG/projekt_3pi.git"
    echo "          filebrowser_php/ [git]/RoboAG/php_filebrowser.git"
    echo ""
    echo "      robosax/"
    echo "          spielfeld/      [git]/RoboSAX/cad_spielfeld.git"
    echo "          ledbox/         [git]/fabiangeissler/robosax-ledbox.git"
    echo "          licht_tht/      [git]/RoboSAX/eagle_licht.git"
    echo "          licht_avr/      [git]/RoboSAX/avr_licht.git"
    echo "          spielfeld_tht/  [git]/RoboSAX/eagle_spielfeld.git"
    echo "          spielfeld_avr/  [git]/RoboSAX/avr_spielfeld.git"
    echo "          anzeige_tht/    [git]/RoboSAX/eagle_anzeige.git"
    echo "          punkte/         [git]/RoboSAX/php_punkte.git"
    echo ""
    echo "  projects/"
    echo "      eagle/"
    echo "          dmx_driver/     [git]/peterweissig/eagle_dmx_driver.git"
    echo ""
    echo "      hardware/"
    echo "          audio_home/     [git]/peterweissig/project_audio_home.git"
    echo "          dmx_opa/        [git]/peterweissig/project_opa.git"
    echo "          dimmer/         [git]/peterweissig/project_dimmer.git"
    echo ""
    echo "      c++/                [git]/peterweissig/cpp_main.git"
    echo "        src/"
    echo "          basic/          [git]/peterweissig/cpp_basic.git"
    echo "          file/           [git]/peterweissig/cpp_file.git"
    echo "          comport/        [git]/peterweissig/cpp_comport.git"
    echo "          xbee_config/    [git]/peterweissig/cpp_xbee_config.git"
    echo "          avr_downloader/ [git]/peterweissig/cpp_avr_downloader.git"
    echo ""
    echo "  ros/"
    echo "    ros-tools-pa/"
    echo "      src/"
    echo "        parameter_pa/     [git]/TUC-ProAut/ros_parameter.git"
    echo "        pcdfilter_pa/     [git]/TUC-ProAut/ros_pcdfilter.git"
    echo "        octomap_pa/       [git]/TUC-ProAut/ros_octomap.git"
    echo "        nearfield_map_pa/ [git]/TUC-ProAut/ros_nearfield_map.git"
    echo "        odometry_pa/      [git]/TUC-ProAut/ros_odometry.git"
    echo ""
    echo "    ros-sensors-pa/"
    echo "      src/"
    echo "        radar_pa/         [git]/TUC-ProAut/ros_radar.git"
    echo ""
    echo ""
    echo "specific commands"
    echo "  git_clone_xyz   ... copies/downloads  specified repository (xyz)"
    echo "  git_pull_xyz    ... updates           specified repository (xyz)"
    echo "  git_status_xyz  ... tracks changes of specified repository (xyz)"
    echo "  git_push_xyz    ... uploads           specified repository (xyz)"
    echo ""
    echo "general commands"
    echo "  repo_clone_all  ... copies/downloads  all repositories"
    echo "  repo_pull_all   ... updates           all repositories"
    echo "  repo_status_all ... tracks changes of all repositories"
    echo ""
}


#***************************[help]********************************************
# 2018 09 03

function repo_help() {

    echo ""
    echo "### $FUNCNAME ###"
    echo ""
    echo "overview of all repositories"
    echo -n "  "; repo_help_overview -h
    echo ""
    echo "svn"
    echo -n "  "; repo_svn_diff -h
    echo -n "  "; _repo_svn_co -h
    echo -n "  "; _repo_svn_up -h
    echo -n "  "; _repo_svn_st -h
    echo ""
    echo "git"
    echo -n "  "; _repo_git_clone -h
    echo -n "  "; _repo_git_pull -h
    echo -n "  "; _repo_git_push -h
    echo -n "  "; _repo_git_st -h
    echo ""
    echo "additional dirs"
    echo -n "  "; echo "<to be done>" # command -h
    echo ""
}