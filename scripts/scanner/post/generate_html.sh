#!/bin/bash
source ./scanner/pre/variables.sh

FILES="./$REPORT_FOLDER/*.xml"
for report_file in $FILES; do 
    report_html=${report_file/.xml/.html}
    xunit-viewer --results $report_file -o $report_html
done
