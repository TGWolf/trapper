#!/usr/bin/env bash

# shellcheck disable=SC1091
source trapper.sh


# shellcheck disable=SC2034
GLOBAL="testing 1 2 3"
export EXPORTED_GLOBAL="I am exported"

./1.sh
