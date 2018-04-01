#!/bin/bash

#***************************[needed external variables]***********************
# 2018 04 01

# REPO_PATH_WORKSPACE


#***************************[paths and files]*********************************
# 2018 04 01

temp_local_path="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd )/"


#***************************[source]******************************************
# 2018 04 01

. ${temp_local_path}scripts/functions.sh
. ${temp_local_path}scripts/help.sh

. ${temp_local_path}scripts/list.sh
. ${temp_local_path}scripts/alias.sh
