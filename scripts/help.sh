#!/bin/bash

#***************************[all]*********************************************
# 2023 11 20

function repo_help_all() {


    # print help
    if [ "$1" == "-h" ]; then
        echo "$FUNCNAME"

        return
    fi
    if [ "$1" == "--help" ]; then
        echo "$FUNCNAME needs no parameters"
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
    echo -n "  "; repo_help_overview_roboag -h
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
    echo -n "  "; git_log -h
    echo -n "  "; _repo_git_clone -h
    echo -n "  "; _repo_git_pull -h
    echo -n "  "; _repo_git_pull_release -h
    echo -n "  "; _repo_git_push -h
    echo -n "  "; _repo_git_st -h
    echo ""
    echo "general repository functions"
    echo -n "  "; repo_pull_all -h
    echo -n "  "; repo_status_all -h
    echo -n "    repo_migration_check #no help"
    echo -n "  "; repo_clone_all -h
    echo -n "    "; repo_clone_bash -h
    echo -n "    "; repo_clone_roboag -h
    echo -n "    "; repo_clone_robosax -h
    echo -n "    "; repo_clone_peter -h
    echo ""
    echo "specific repository functions"
    echo -n "  "; echo "git_clone_..."
    echo -n "  "; echo "git_pull_..."
    echo -n "  "; echo "git_status_..."
    echo ""
    echo "workspace"
    echo -n "  "; repo_workspace_status -h
    echo -n "  "; repo_workspace_check -h
    echo -n "  "; repo_workspace_update -h
    echo ""
    echo "additional dirs"
    echo -n "  "; repo_additional_dirs_add -h
    echo -n "  "; repo_additional_dirs_status -h
    echo -n "  "; _repo_additional_dirs_load -h
    echo ""
}

#***************************[help]********************************************
# 2023 11 20

function repo_help() {

    echo ""
    echo "### $FUNCNAME ###"
    echo ""
    echo "help functions"
    echo -n "  "; echo "$FUNCNAME  #no help"
    echo -n "  "; repo_help_all -h
    echo -n "  "; repo_help_overview -h
    echo -n "  "; repo_help_overview_roboag -h
    echo ""
    echo "version control"
    echo -n "  "; svn_diff -h
    echo -n "  "; git_diff -h
    echo -n "  "; git_log -h
    echo -n "  "; git_config_set_ssh -h
    echo ""
    echo "general repository functions"
    echo -n "  "; repo_pull_all -h
    echo -n "  "; repo_status_all -h
    echo -n "    repo_migration_check #no help"
    echo -n "  "; repo_clone_all -h
    echo -n "    "; repo_clone_bash -h
    echo -n "    "; repo_clone_roboag -h
    echo -n "    "; repo_clone_robosax -h
    echo -n "    "; repo_clone_peter -h
    echo ""
    echo "workspace"
    echo -n "  "; repo_workspace_status -h
    echo -n "  "; repo_workspace_check -h
    echo -n "  "; repo_workspace_update -h
    echo ""
    echo "additional dirs"
    echo -n "  "; repo_additional_dirs_add -h
    echo -n "  "; repo_additional_dirs_status -h
    echo ""
}
