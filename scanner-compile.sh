rm scanner-v*.zip*
rm -rf scanner/
SCANNER_VERSION=0.2
wget https://github.com/Ko-Sit/salesforce-code-review/releases/download/$SCANNER_VERSION/scanner-v$SCANNER_VERSION.zip # release zip url

unzip scanner-v$SCANNER_VERSION.zip

./scanner/run.sh