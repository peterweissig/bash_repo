#!/bin/bash

#***************************[overview]****************************************
# 2020 06 19

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
    echo "      file/               [git]/peterweissig/bash_file.git"
    echo "      master/"
    echo "          bash_only/      [git]/peterweissig/bash_master_simple.git"
    echo "          server/         [git]/peterweissig/bash_master_server.git"
    echo "          roboag/         [git]/RoboAG/bash_roboag.git"
    echo ""
    echo "  doc/"
    echo "      server/"
    echo "          online/         [git]/peterweissig/doc_server_online.git"
    echo "          local/          [git]/peterweissig/doc_server_local.git"
    echo "      robolib/            [git]/RoboAG/doc_robolib.git (release!)"
    echo "      punkte/             [git]/RoboSAX/doc_punkte.git (release!)"
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
    echo "          roboter/        [git]/RoboAG/projekt_roboter.git"
    echo "          filebrowser_php/ [git]/RoboAG/php_filebrowser.git"
    echo ""
    echo "  robosax/"
    echo "      eagle/"
    echo "          spielfeld/  [git]/RoboSAX/eagle_spielfeld.git"
    echo "          licht/      [git]/RoboSAX/eagle_licht.git"
    echo "          anzeige/    [git]/RoboSAX/eagle_anzeige.git"
    echo ""
    echo "      avr/"
    echo "          spielfeld/  [git]/RoboSAX/avr_spielfeld.git"
    echo "          omnibot/    [git]/RoboSAX/avr_omnibot.git"
    echo ""
    echo "      projects/"
    echo "          spielfeld/  [git]/RoboSAX/cad_spielfeld.git"
    echo "          ledbox/     [git]/fabiangeissler/robosax-ledbox.git"
    echo ""
    echo "      php/"
    echo "          punkte/     [git]/RoboSAX/php_punkte.git"
    echo "          punkte_old/ [git]/RoboSAX/php_punkte_old.git"
    echo "          web_frame/  [git]/RoboSAX/php_web.git"
    echo ""
    echo "  projects/"
    echo "      eagle/"
    echo "          dmx_driver/     [git]/peterweissig/eagle_dmx_driver.git"
    echo ""
    echo "      hardware/"
    echo "          trailer/        [git]/peterweissig/project_anhaenger.git"
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


#***************************[all]*********************************************
# 2020 09 16

function repo_help_all() {


    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME needs 0 parameters"
        echo "Prints all available functions within repository \"repo\"."

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
    echo "help"
    echo -n "  "; echo "repo_help  #no help"
    echo -n "  "; $FUNCNAME -h
    echo -n "  "; repo_help_overview -h
    echo ""
    echo "helper functions"
    echo -n "  "; _repo_diff -h
    echo ""
    echo "svn"
    echo -n "  "; svn_diff -h
    echo -n "  "; _repo_svn_co -h
    echo -n "  "; _repo_svn_up -h
    echo -n "  "; _repo_svn_st -h
    echo ""
    echo "git"
    echo -n "  "; git_config_set_ssh -h
    echo -n "  "; git_diff -h
    echo -n "  "; _repo_git_clone -h
    echo -n "  "; _repo_git_pull -h
    echo -n "  "; _repo_git_pull_release -h
    echo -n "  "; _repo_git_push -h
    echo -n "  "; _repo_git_st -h
    echo ""
    echo "general repository functions"
    echo -n "  "; repo_pull_all -h
    echo -n "  "; repo_status_all -h
    echo -n "  "; repo_clone_all -h
    echo -n "    "; repo_clone_bash -h
    echo -n "    "; repo_clone_roboag -h
    echo -n "    "; repo_clone_robosax -h
    echo -n "    "; repo_clone_peter -h
    echo -n "    "; repo_clone_ros -h
    echo ""
    echo "specific repository functions (alias)"
    echo -n "  "; echo "git_clone_..."
    echo -n "  "; echo "git_pull_..."
    echo -n "  "; echo "git_status_..."
    echo ""
    echo "additional dirs"
    echo -n "  "; repo_additional_dirs_add -h
    echo -n "  "; repo_additional_dirs_status -h
    echo -n "  "; _repo_additional_dirs_load -h
    echo ""
}

#***************************[help]********************************************
# 2020 09 16

function repo_help() {

    echo ""
    echo "### $FUNCNAME ###"
    echo ""
    echo "help functions"
    echo -n "  "; echo "$FUNCNAME  #no help"
    echo -n "  "; repo_help_all -h
    echo -n "  "; repo_help_overview -h
    echo ""
    echo "version control"
    echo -n "  "; svn_diff -h
    echo -n "  "; git_diff -h
    echo -n "  "; git_config_set_ssh -h
    echo ""
    echo "general repository functions"
    echo -n "  "; repo_pull_all -h
    echo -n "  "; repo_status_all -h
    echo -n "  "; repo_clone_all -h
    echo -n "    "; repo_clone_bash -h
    echo -n "    "; repo_clone_roboag -h
    echo -n "    "; repo_clone_robosax -h
    echo -n "    "; repo_clone_peter -h
    echo -n "    "; repo_clone_ros -h
    echo ""
    echo "additional dirs"
    echo -n "  "; repo_additional_dirs_add -h
    echo -n "  "; repo_additional_dirs_status -h
    echo ""
}
