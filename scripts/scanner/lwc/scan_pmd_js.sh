#!/bin/bash
source ./pre/variables.sh
TARGET_SOURCE="force-app"
REPORT_NAME="/scan-pmd-js.csv"
REPORT_PATH="$REPORT_FOLDER/$REPORT_NAME"
PMD_CONFIG_JS="./rules/pmd-ruleset-js.xml"
sfdx scanner:run --format csv \
    --target $TARGET_SOURCE \
    --pmdconfig $PMD_CONFIG_JS \
    --engine pmd \
    --outfile $REPORT_PATH
