#!/bin/bash
set -o allexport; source .env; set +o allexport
./scripts/do-release.sh
./scripts/do-unpack.sh
./scanner/run.sh