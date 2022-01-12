#!/bin/bash
source ./scanner/pre/variables.sh
REPORT_NAME="scan-eslint-lwc.html"
REPORT_HTML="$REPORT_FOLDER/$REPORT_NAME"
sfdx scanner:run --engine "eslint-lwc" \
    --format html \
    --category "LWC" \
    --outfile $REPORT_HTML \
    --severity-threshold=1 \
    --target $TARGET_SOURCE_LWC
