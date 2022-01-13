#!/bin/bash
source ./scanner/pre/variables.sh
REPORT_NAME="scan-pmd-visualforce.html"
REPORT_HTML="$REPORT_FOLDER/$REPORT_NAME"
PMD_CONFIG_VF="./scanner/rules/pmd-ruleset-vf.xml"
sfdx scanner:run --format html \
    --target $TARGET_SOURCE \
    --pmdconfig $PMD_CONFIG_VF \
    --engine pmd \
    --severity-threshold=1 \
    --outfile $REPORT_HTML