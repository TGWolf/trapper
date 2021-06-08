#!/usr/bin/env bash

set -eu

# shellcheck disable=SC1091
source trapper.sh


# Test traps
ls /root/

whoami
