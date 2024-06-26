#!/bin/bash

#***************************[overview]****************************************
# 2024 05 28

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
    echo ""
    echo "  roboag/"
    echo "      lib/                [git]/RoboAG/avr_robolib.git"
    echo "      pololu/             [git]/pololu/libpololu-avr"
    echo ""
    echo "      roberta/"
    echo "          connector/      [git]/OpenRoberta/openroberta-connector.git"
    echo "          server/         [git]/OpenRoberta/openroberta-lab.git"
    echo ""
    echo "      mblock/"
    echo "          arduino/        [git]/Makeblock-official/Makeblock-Libraries.git"
    echo "          mbot/           [git]/Makeblock-official/mBot.git"
    echo "          sensors/"
    echo "              busio/      [git]/adafruit/Adafruit_BusIO.git"
    echo "              color_sensor/ [git]/adafruit/Adafruit_TCS34725.git"
    echo ""
    echo "      doc/"
    echo "          install/        [git]/RoboAG/doc_install.git"
    echo "          robolib/        [git]/RoboAG/doc_robolib.git (release!)"
    echo ""
    echo "      eagle/"
    echo "          config/         [git]/RoboAG/eagle_config.git"
    echo "          keplerboard/    [git]/RoboAG/eagle_keplerboard.git"
    echo "          xbee/           [git]/RoboAG/eagle_xbee.git"
    echo "          logic/          [git]/RoboAG/eagle_logic.git"
    echo "          vtgMon/         [git]/RoboAG/eagle_voltageMonitoring.git"
    echo ""
    echo "      projects/"
    echo "          rotierendes_display/ [git]/RoboAG/projekt_display.git"
    echo "          gluecksrad/     [git]/RoboAG/projekt_gluecksrad.git"
    echo "          3pi/            [git]/RoboAG/projekt_3pi.git"
    echo "          roboter/        [git]/RoboAG/projekt_roboter.git"
    echo "          raspi_presenter/ [git]/RoboAG/projekt_raspi_presenter.git"
    echo ""
    echo "      php/"
    echo "          filebrowser/    [git]/RoboAG/php_filebrowser.git"
    echo ""
    echo "  robosax/"
    echo "      doc/"
    echo "          punkte/         [git]/RoboSAX/doc_punkte.git (release!)"
    echo ""
    echo "      eagle/"
    echo "          spielfeld/      [git]/RoboSAX/eagle_spielfeld.git"
    echo "          licht/          [git]/RoboSAX/eagle_licht.git"
    echo "          anzeige/        [git]/RoboSAX/eagle_anzeige.git"
    echo ""
    echo "      avr/"
    echo "          spielfeld/      [git]/RoboSAX/avr_spielfeld.git"
    echo "          omnibot/        [git]/RoboSAX/avr_omnibot.git"
    echo ""
    echo "      projects/"
    echo "          spielfeld/      [git]/RoboSAX/cad_spielfeld.git"
    echo "          ledbox/         [git]/fabiangeissler/robosax-ledbox.git"
    echo "          punkte/         [git]/RoboSAX/projekt_punkte.git"
    echo ""
    echo "      php/"
    echo "          punkte/         [git]/RoboSAX/php_punkte.git"
    echo "          punkte_old/     [git]/RoboSAX/php_punkte_old.git"
    echo "          web_frame/      [git]/RoboSAX/php_web.git"
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
    echo "      c++/"
    echo "          avr_downloader/ [git]/peterweissig/cpp_avr_downloader.git"
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
    echo "      repo_clone_bash"
    echo "      repo_clone_roboag"
    echo "      repo_clone_robosax"
    echo "  repo_pull_all   ... updates           all repositories"
    echo "  repo_status_all ... tracks changes of all repositories"
    echo ""
}



#***************************[roboag]******************************************
# 2024 05 28

function repo_help_overview_roboag() {

    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME needs 0 parameters"
        echo "Prints an overview of all available repositories."
        echo "  (structured in roboag mode - REPO_MODE=roboag)"

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
    echo "  WinAVR/"
    echo "      robolib/            [git]/RoboAG/avr_robolib.git"
    echo "      pololu/             [git]/pololu/libpololu-avr"
    echo ""
    echo "      roberta/"
    echo "          connector/      [git]/OpenRoberta/openroberta-connector.git"
    echo "          server/         [git]/OpenRoberta/openroberta-lab.git"
    echo ""
    echo "      mblock/"
    echo "          arduino/        [git]/Makeblock-official/Makeblock-Libraries.git"
    echo "          mbot/           [git]/Makeblock-official/mBot.git"
    echo "          sensors/"
    echo "              busio/      [git]/adafruit/Adafruit_BusIO.git"
    echo "              color_sensor/ [git]/adafruit/Adafruit_TCS34725.git"
    echo ""
    echo "      RoboSAX/"
    echo "          spielfeld/      [git]/RoboSAX/avr_spielfeld.git"
    echo "          omnibot/        [git]/RoboSAX/avr_omnibot.git"
    echo ""
    echo "  Eagle/"
    echo "      config/             [git]/RoboAG/eagle_config.git"
    echo "      keplerboard/        [git]/RoboAG/eagle_keplerboard.git"
    echo "      xbee/               [git]/RoboAG/eagle_xbee.git"
    echo "      logic/              [git]/RoboAG/eagle_logic.git"
    echo "      vtgMon/             [git]/RoboAG/eagle_voltageMonitoring.git"
    echo ""
    echo "      RoboSAX/"
    echo "          spielfeld/      [git]/RoboSAX/eagle_spielfeld.git"
    echo "          licht/          [git]/RoboSAX/eagle_licht.git"
    echo "          anzeige/        [git]/RoboSAX/eagle_anzeige.git"
    echo ""
    echo "      Peter/"
    echo "          dmx_driver/     [git]/peterweissig/eagle_dmx_driver.git"
    echo ""
    echo "  Projekte/"
    echo "      rotierendes_display/ [git]/RoboAG/projekt_display.git"
    echo "      gluecksrad/         [git]/RoboAG/projekt_gluecksrad.git"
    echo "      3pi/                [git]/RoboAG/projekt_3pi.git"
    echo "      roboter/            [git]/RoboAG/projekt_roboter.git"
    echo "      raspi_presenter/    [git]/RoboAG/projekt_raspi_presenter.git"
    echo ""
    echo "      RoboSAX/"
    echo "          spielfeld/      [git]/RoboSAX/cad_spielfeld.git"
    echo "          ledbox/         [git]/fabiangeissler/robosax-ledbox.git"
    echo "          punkte/         [git]/RoboSAX/projekt_punkte.git"
    echo ""
    echo "      Peter/"
    echo "          trailer/        [git]/peterweissig/project_anhaenger.git"
    echo "          audio_home/     [git]/peterweissig/project_audio_home.git"
    echo "          dmx_opa/        [git]/peterweissig/project_opa.git"
    echo "          dimmer/         [git]/peterweissig/project_dimmer.git"
    echo ""
    echo "  C++/"
    echo "      avr_downloader/     [git]/peterweissig/cpp_avr_downloader.git"
    echo ""
    echo "  PHP/"
    echo "      filebrowser/        [git]/RoboAG/php_filebrowser.git"
    echo ""
    echo "      RoboSAX/"
    echo "          punkte/         [git]/RoboSAX/php_punkte.git"
    echo "          punkte_old/     [git]/RoboSAX/php_punkte_old.git"
    echo "          web_frame/      [git]/RoboSAX/php_web.git"
    echo ""
    echo "  Dokumentation/"
    echo "      robolib/            [git]/RoboAG/doc_robolib.git (release!)"
    echo "      install/            [git]/RoboAG/doc_install.git"
    echo ""
    echo "      RoboSAX/"
    echo "          punkte/         [git]/RoboSAX/doc_punkte.git (release!)"
    echo ""
    echo "      server/"
    echo "          online/         [git]/peterweissig/doc_server_online.git"
    echo "          local/          [git]/peterweissig/doc_server_local.git"
    echo ""
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
    echo ""
    echo "specific commands"
    echo "  git_clone_xyz   ... copies/downloads  specified repository (xyz)"
    echo "  git_pull_xyz    ... updates           specified repository (xyz)"
    echo "  git_status_xyz  ... tracks changes of specified repository (xyz)"
    echo "  git_push_xyz    ... uploads           specified repository (xyz)"
    echo ""
    echo "general commands"
    echo "  repo_clone_all  ... copies/downloads  all repositories"
    echo "      repo_clone_bash"
    echo "      repo_clone_roboag"
    echo "      repo_clone_robosax"
    echo "  repo_pull_all   ... updates           all repositories"
    echo "  repo_status_all ... tracks changes of all repositories"
    echo ""
}
