#!/bin/bash
source ./scanner/pre/variables.sh
REPORT_NAME="scan-eslint-lwc.csv"
REPORT_PATH="$REPORT_FOLDER/$REPORT_NAME"
sfdx scanner:run --engine "eslint-lwc" \
    --format csv \
    --category "LWC" \
    --outfile $REPORT_PATH \
    --target $TARGET_SOURCE_LWC
