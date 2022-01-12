#!/bin/bash
echo "running pre-run"
source ./scanner/pre/variables.sh
rm -rf $REPORT_FOLDER
mkdir $REPORT_FOLDER
