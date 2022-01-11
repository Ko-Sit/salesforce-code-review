#!/bin/bash
source ./pre/variables.sh
TARGET_SOURCE="force-app"
REPORT_NAME="scan-pmd-apex.csv"
REPORT_PATH="$REPORT_FOLDER/$REPORT_NAME"
PMD_CONFIG_APEX="./rules/pmd-ruleset-apex.xml"
sfdx scanner:run --format csv \
    --target $TARGET_SOURCE \
    --pmdconfig $PMD_CONFIG_APEX \
    --engine pmd \
    --outfile $REPORT_PATH
