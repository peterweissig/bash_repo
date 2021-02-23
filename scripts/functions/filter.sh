#!/bin/bash

#***************************[_repo_filter_git_grep]***************************
# 2021 02 23

function _repo_filter_git_grep() {

    # print help
    if [ "$1" == "-h" ]; then
        echo "... | $FUNCNAME"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME needs no parameters"
        echo "Simplifies the given input stream."
        echo -n "Therefore, it is intented that an other command is piping "
        echo "into this one."
        echo "  e.g. $ repo_status_all | $FUNCNAME"

        return
    fi

    # check parameter
    if [ $# -ne 0 ]; then
        echo "$FUNCNAME: Parameter Error."
        $FUNCNAME --help
        return -1
    fi

    # status filter
    filter="Auf Branch (master|main|gh-pages)"
    filter+="|Ihr Branch ist auf dem ?selben Stand"
    filter+="|nichts zu committen, Arbeitsverzeichnis unverändert"

    # update filter
    filter+="|Already up-to-date."
    filter+="|Bereits aktuell."

    # call grep
    grep --line-buffered -E -v "($filter)" -
}


#***************************[_repo_filter_git_awk]****************************
# 2021 02 23

function _repo_filter_git_awk() {

    # print help
    if [ "$1" == "-h" ]; then
        echo "... | $FUNCNAME"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME needs no parameters"
        echo "Simplifies the given input stream."
        echo -n "Therefore, it is intented that an other command is piping "
        echo "into this one."
        echo "  e.g. $ repo_status_all | _repo_filter_git_grep | $FUNCNAME"

        return
    fi

    # check parameter
    if [ $# -ne 0 ]; then
        echo "$FUNCNAME: Parameter Error."
        $FUNCNAME --help
        return -1
    fi

    AWK_STRING='
        # check current line
        {
            current_ok=1
        }
        $0 ~ /^###/ && $0 ~ /###$/ {
            current_ok=0
        }

        # skip first line
        FNR > 1 {
            # check if line is empty
            if ($0 ~ /^$/ && last_ok == 0) {
                # skip empty line
                next
            }

            # check current & last line
            if (last_ok == 1 || current_ok == 1) {
                print last

                # https://superuser.com/questions/379122
                fflush()
                #fflush("/dev/stdout")
                #system("")
            }
        }

        # update variables
        {
            last=$0
            last_ok=current_ok
        }

        # print last line
        END {
            if (last_ok == 1) {
                print last
            }
        }
    '

    awk "$AWK_STRING"
}
