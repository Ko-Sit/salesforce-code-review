#!/bin/bash
export MAIN_DIR=`pwd`
echo "current dir $MAIN_DIR"
export SCRIPT_DIR=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd $SCRIPT_DIR
echo "entered dir $SCRIPT_DIR"
# pre script
bash ./pre/run.sh
# main script
bash ./main/run.sh
# post script
bash ./post/run.sh
cd $MAIN_DIR


