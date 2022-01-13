#!/bin/bash
echo "running main-run"
bash ./scanner/apex/scan_pmd_apex.sh
bash ./scanner/visualforce/scan_pmd_vf.sh
bash ./scanner/lwc/scan_pmd_js.sh
bash ./scanner/lwc/scan_eslint_lwc.sh
bash ./scanner/cpd/scan_copy_paste.sh