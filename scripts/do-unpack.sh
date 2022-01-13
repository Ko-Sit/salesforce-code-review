#!/bin/bash
set -o allexport; source .env; set +o allexport
rm -rf ./scanner
unzip -q ./out/scanner-$SCANNER_VERSION.zip -d .
echo "unpack complete";