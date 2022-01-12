#!/bin/bash
source ./scanner/pre/variables.sh
REPORT_NAME="scan-pmd-js.html"
REPORT_HTML="$REPORT_FOLDER/$REPORT_NAME"
PMD_CONFIG_JS="./scanner/rules/pmd-ruleset-js.xml"
sfdx scanner:run --format html \
    --target $TARGET_SOURCE \
    --pmdconfig $PMD_CONFIG_JS \
    --engine pmd \
    --outfile $REPORT_HTML
