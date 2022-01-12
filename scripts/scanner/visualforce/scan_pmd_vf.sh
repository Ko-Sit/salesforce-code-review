#!/bin/bash
source ./scanner/pre/variables.sh
REPORT_NAME="scan-pmd-visualforce"
REPORT_PATH="$REPORT_FOLDER/$REPORT_NAME"
REPORT_CSV="$REPORT_PATH.csv"
REPORT_XML="$REPORT_PATH.xml"
PMD_CONFIG_VF="./scanner/rules/pmd-ruleset-vf.xml"
sfdx scanner:run --format csv \
    --target $TARGET_SOURCE \
    --pmdconfig $PMD_CONFIG_VF \
    --engine pmd \
    --outfile $REPORT_CSV
sfdx scanner:run --format junit \
    --target $TARGET_SOURCE \
    --pmdconfig $PMD_CONFIG_VF \
    --engine pmd \
    --outfile $REPORT_XML
