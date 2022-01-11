#!/bin/bash
source ./pre/variables.sh
TARGET_SOURCE="force-app"
REPORT_NAME="scan-pmd-visualforce.csv"
REPORT_PATH="$REPORT_FOLDER/$REPORT_NAME"
PMD_CONFIG_VF="./rules/pmd-ruleset-vf.xml"
sfdx scanner:run --format csv \
    --target $TARGET_SOURCE \
    --pmdconfig $PMD_CONFIG_VF \
    --engine pmd \
    --outfile $REPORT_PATH
