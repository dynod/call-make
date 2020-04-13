#!/bin/bash
set -ex

# Get inputs
PROJECT_PATH="$1"
shift
TARGET="$1"
shift

# Just make sure we can write in workspace folder; and fix HOME setting
sudo chmod a+w .
export HOME=/home/user

# Call make
make -C "${PROJECT_PATH}" "${TARGET}"
