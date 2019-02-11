#!/usr/bin/env bash

# any subsequent commands which fail will cause the shell script to exit
set -e

# create matplotlib config directory if it doesn't exist yet
MPL_CONFIG_DIR=$(python -c "import matplotlib; print(matplotlib.get_configdir())")
# check that matplotlib config directory was captured
if [ -z "$MPL_CONFIG_DIR" ] ; then
    echo "Matplotlib config directory not found. Please make sure that matplotlib is installed correctly."
    exit 1 ;
fi
# create stylelib directory
mkdir -p $MPL_CONFIG_DIR/stylelib

# copy .mplstyle files into matplotlib config directory
cp -v *.mplstyle $MPL_CONFIG_DIR/stylelib

# report success
echo -e "--------------------\nAll matplotlib style files successfully copied to $MPL_CONFIG_DIR/stylelib"
