#!/bin/bash
source ./scanner/pre/variables.sh
REPORT_NAME="scan-duplicate-code.csv"
REPORT_PATH="$REPORT_FOLDER/$REPORT_NAME"
export NODE_OPTIONS=--max_old_space_size=4096 # avoid heap limit
sfdx scanner:run --target $TARGET_SOURCE_CPD --engine cpd --outfile $REPORT_PATH


