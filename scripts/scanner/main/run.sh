#!/bin/bash
echo "running main-run"
bash ./apex/scan_pmd_apex.sh
bash ./visualforce/scan_pmd_vf.sh
bash ./lwc/scan_eslint_lwc.sh
bash ./lwc/scan_pmd_js.sh
bash ./cpd/scan_copy_paste.sh