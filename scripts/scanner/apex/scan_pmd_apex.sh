#!/bin/bash
source ./scanner/pre/variables.sh
REPORT_NAME="scan-pmd-apex"
REPORT_PATH="$REPORT_FOLDER/$REPORT_NAME"
REPORT_CSV="$REPORT_PATH.csv"
REPORT_XML="$REPORT_PATH.xml"
PMD_CONFIG_APEX="./scanner/rules/pmd-ruleset-apex.xml"
sfdx scanner:run --format csv \
    --target $TARGET_SOURCE \
    --pmdconfig $PMD_CONFIG_APEX \
    --engine pmd \
    --outfile $REPORT_CSV
sfdx scanner:run --format junit \
    --target $TARGET_SOURCE \
    --pmdconfig $PMD_CONFIG_APEX \
    --engine pmd \
    --outfile $REPORT_XML
