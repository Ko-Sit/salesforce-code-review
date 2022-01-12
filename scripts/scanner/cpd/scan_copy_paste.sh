#!/bin/bash
source ./scanner/pre/variables.sh
REPORT_NAME="scan-duplicate-code.html"
REPORT_HTML="$REPORT_FOLDER/$REPORT_NAME"
export NODE_OPTIONS=--max_old_space_size=4096 # avoid heap limit
sfdx scanner:run --format html \
    --target $TARGET_SOURCE_CPD \
    --engine cpd \
    --severity-threshold=1 \
    --outfile $REPORT_HTML


