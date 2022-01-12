#!/bin/bash
source ./scanner/pre/variables.sh
REPORT_NAME="scan-pmd-apex.html"
REPORT_HTML="$REPORT_FOLDER/$REPORT_NAME"
PMD_CONFIG_APEX="./scanner/rules/pmd-ruleset-apex.xml"
sfdx scanner:run --format html \
    --target $TARGET_SOURCE \
    --pmdconfig $PMD_CONFIG_APEX \
    --engine pmd \
    --severity-threshold=1 \
    --outfile $REPORT_HTML
