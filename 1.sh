#!/usr/bin/env bash

set -euE

# shellcheck disable=SC1091
source trapper.sh

# Test global variabes
#echo "Global=$GLOBAL"
echo "Expoerted Global=$EXPORTED_GLOBAL"

./2.sh
