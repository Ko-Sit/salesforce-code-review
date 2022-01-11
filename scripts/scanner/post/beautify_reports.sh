#!/bin/bash
source ./pre/variables.sh
REPLACE_FILE_PATH="\/" 
echo "running reports beautify: trim path $SCRIPT_DIR"
# decrease file path in csv with stream editor 
# sed -i '' -e "s/\/Users.*default\//\//" "reports/duplicate-code-detection.csv"
for file in "./$REPORT_FOLDER/*.csv"; do 
    sed -i '' \
    -e "s/$pwd/$REPLACE_FILE_PATH/" \
    $file
done