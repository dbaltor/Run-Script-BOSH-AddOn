#!/usr/bin/env bash
#
# Script Name: run-script.sh
#
# Author: 
# Date : 
#
# Description: This is the skeleton of a script to execute only once right after the BOSH VM has been deployed.
# The parameters below are just examples and must be updated or removed.
#
# Run Information: The following properties must have been set via `bosh update-runtime-config`:
#   run-script.PARAMETER_A - Some parameter A
#   run-script.PARAMETER_B - Some parameter B
#
PARAMETER_A=<%= p("run-script.PARAMETER_A") %>
PARAMETER_B=<%= p("run-script.PARAMETER_B") %>

TIMESTAMP="$(date)"

if [[ -z "$PARAMETER_A" ]] ; then
    echo "$TIMESTAMP - <run-script.PARAMETER_A> is missing."
    echo $'\n'
    exit 110
fi
if [[ -z "$PARAMETER_B" ]] ; then
    echo "$TIMESTAMP - <run-script.PARAMETER_B> is missing."
    echo $'\n'
    exit 220
fi
echo "$TIMESTAMP - All required properties have been set."
echo "################################################################################"

# Write your code here...