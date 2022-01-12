#!/bin/bash
echo "running post-run"
bash ./scanner/post/beautify_reports.sh
bash ./scanner/post/generate_html.sh