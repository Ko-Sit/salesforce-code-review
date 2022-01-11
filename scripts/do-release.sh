#!/bin/bash
set -o allexport; source .env; set +o allexport
rm -rf scanner
rm -rf out
mkdir out
cd scripts
zip -r -q ./../out/scanner-$SCANNER_VERSION.zip scanner/* -x "*.DS_Store"
cd ..
echo "build release $SCANNER_VERSION complete"