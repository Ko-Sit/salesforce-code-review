#!/bin/bash
source ./scanner/pre/variables.sh
INITIAL_FILE_PATH="$PWD/"
REPLACE_FILE_PATH="\/" 
echo "running reports beautify: trim path $INITIAL_FILE_PATH"
SEARCH_PATH="${INITIAL_FILE_PATH//\//\\/}"
# decrease file path in csv with stream editor 
# sed -i '' -e "s/\/Users.*default\//\//" "reports/duplicate-code-detection.csv"
FILES="./$REPORT_FOLDER/*"
for file in $FILES; do 
    sed -i '' \
    -e "s/$SEARCH_PATH/$REPLACE_FILE_PATH/" \
    $file
done


