#***************************[help]********************************************
# 2018 02 04
function repo_help() {

    echo ""
    echo "### repo_help ###"
    echo ""
    echo "structure of all listed repositories:"
    echo "  [git] == https://github.com/"
    echo ""
    echo "  bash/"
    echo "      repo/               [git]/peterweissig/bash_repo.git"
    echo "      config/             [git]/peterweissig/bash_config.git"
    echo "      network/            [git]/peterweissig/bash_network.git"
    echo "      multimedia/         [git]/peterweissig/bash_multimedia.git"
    echo "      roboag/             [git]/peterweissig/bash_roboag.git"
    echo ""
    echo "  robo/"
    echo "      lib/                [git]/peterweissig/robolib.git"
    echo "      pololu/             [git]/pololu/libpololu-avr"
    echo ""
    echo "      eagle/"
    echo "          config/         [git]/peterweissig/eagle_config.git"
    echo "          keplerboard/    [git]/peterweissig/eagle_keplerboard.git"
    echo "          xbee/           [git]/peterweissig/eagle_xbee.git"
    echo "          logic/          [git]/peterweissig/eagle_logic.git"
    echo "          vtgMon/         [git]/peterweissig/eagle_voltageMonitoring.git"
    echo ""
    echo "      roboag/"
    echo "          gluecksrad/     [git]/roboag/projekt_gluecksrad.git"
    echo "          3pi/            [git]/roboag/projekt_3pi.git"
    echo ""
    echo "      robosax/"
    echo "          ledbox/         [git]/fabiangeissler/robosax-ledbox"
    echo "          licht_tht/      [git]/peterweissig/eagle_robosax_licht.git"
    echo "          licht_avr/      [git]/peterweissig/avr_robosax_licht.git"
    echo "          punkte/         [git]/peterweissig/php_robosax_punkte.git"
    echo ""
    echo "  projects/"
    echo "      eagle/"
    echo "          dmx_driver/     [git]/peterweissig/eagle_dmx_driver.git"
    echo "          dmx_opa/        [git]/peterweissig/eagle_dmx_opa.git"
    echo ""
    echo "      hardware/"
    echo "          audio_home/     [git]/peterweissig/proj_audio_home.git"
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
    echo "    github/"
    echo "      src/"
    echo "        parameter/        [git]/peterweissig/ros_parameter.git"
    echo "        pcdfilter/        [git]/peterweissig/ros_pcdfilter.git"
    echo "        octomap/          [git]/peterweissig/ros_octomap.git"
    echo "        nearfield_map/    [git]/peterweissig/ros_nearfield_map.git"
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
